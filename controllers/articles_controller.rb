# frozen_string_literal: true

require_relative "application_controller"
# controllers/articles_controller.rb
class ArticlesController < ApplicationController
  def index
    index_file = File.join(Dir.pwd, "views", "index.html")
    File.read(index_file)
  end
end
