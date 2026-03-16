# frozen_string_literal: true

require "singleton"
require_relative "../../controllers/articles_controller"
# Router system
class Router
  include Singleton

  attr_reader :routes

  class << self
    def draw(&)
      Router.instance.instance_exec(&)
    end
  end

  def initialize
    @routes = {}
  end

  def get(path, &blk)
    @routes[path] = (blk || lambda { |env|
      controller_name, action_name = find_controller_action(path)
      controller_klass = constantize(controller_name)
      controller = controller_klass.new(env)

      controller.send(action_name.to_sym)
    })
  end

  def build_response(env)
    path = env["REQUEST_PATH"]
    handler = @routes[path] || ->(_env) { "no route found for #{path}" }
    handler.call(env) # pass the env hash to route handler
  end

  private

  def find_controller_action(path)
    result = path.match(%r{/(\w+)/(\w+)/?}) # path = "/articles/index"
    controller = result[1]
    action = result[2]
    [controller, action] # ['articles', 'index']
  end

  def constantize(name)
    controller_klass_name = "#{name.capitalize}Controller"
    Object.const_get(controller_klass_name)
  end
end
