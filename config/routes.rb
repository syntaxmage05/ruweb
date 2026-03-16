# frozen_string_literal: true

require_relative "../lib/router/router"

Router.draw do
  get("/") { "Fred's Blog" }

  get("/articles") { "All Articles" }

  get("/articles/1") do |env|
    puts "Path: #{env['REQUEST_PATH']}"
    "First Article"
  end
end
