# frozen_string_literal: true

require_relative "application_controller"
# controllers/articles_controller.rb
class ArticlesController < ApplicationController
  def index
    "<h1>All Articles</h1>"
  end
end
