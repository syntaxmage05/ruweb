# frozen_string_literal: true

require "singleton"
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
    @routes[path] = blk
  end

  def build_response(env)
    path = env["REQUEST_PATH"]
    handler = @routes[path] || ->(_env) { "no route found for #{path}" }
    handler.call(env) # pass the env hash to route handler
  end
end
