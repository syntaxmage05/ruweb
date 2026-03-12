# frozen_string_literal: true

# create a Rack-compliant web application
class App
  def call(_env)
    # a hash containing response headers
    headers = {
      "Content-Type": "text/html"
    }

    # an array containing the HTML response string
    response = ["<h1>Hello World!</h1>"]

    [200, headers, response]
  end
end
