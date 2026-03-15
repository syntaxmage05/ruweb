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

  def build_response(path)
    handler = @routes[path] || -> { "no route found for #{path}" }
    handler.call
  end
end
