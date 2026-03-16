# frozen_string_literal: true

require_relative "../lib/router/router"

Router.draw do
  get("/") { "Fred's Blog" }

  get "/articles/index"
end
