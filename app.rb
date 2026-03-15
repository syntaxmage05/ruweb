# frozen_string_literal: true

require_relative "config/routes"
# require_relative "lib/Router/router"
# create a Rack-compliant web application
class App
  #
  # This is the same as the file in
  #
  # config/routes
  #
  # attr_reader :router

  # def initialize
  #   @router = Router.new

  #   router.get("/") { "Fred's Blog" }

  #   router.get("/articles") { "All Articles" }

  #   router.get("/articles/1") { "First Articles" }
  # end

  def call(env)
    # a hash containing response headers
    headers = {
      "Content-Type": "text/html"
    }

    response_html = router.build_response(env)

    [200, headers, [response_html]]
  end

  private

  #
  # We are using the Router.instance from the singleton
  #
  # to get the router's instance and make it private
  #
  # So that we cannot instantiate Router.new
  #

  def router
    Router.instance
  end
end
