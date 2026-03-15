# frozen_string_literal: true

require_relative "lib/Router/router"
# create a Rack-compliant web application
class App
  attr_reader :router

  def initialize
    @router = Router.new

    router.get("/") { "Fred's Blog" }

    router.get("/articles") { "All Articles" }

    router.get("/articles/1") { "First Articles" }
  end

  def call(env)
    # a hash containing response headers
    headers = {
      "Content-Type": "text/html"
    }

    response_html = router.build_response(env["REQUEST_PATH"])

    [200, headers, [response_html]]
  end
end
