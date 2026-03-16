# frozen_string_literal: true

# controllers/articles_controller.rb
class ArticlesController
  attr_reader :env

  def initialize(env)
    @env = env
  end

  def index
    "<h1>All Articles</h1>"
  end
end
