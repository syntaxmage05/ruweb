# frozen_string_literal: true

# controllers/articles_controller.rb
class ArticleController
  attr_reader :env

  def initialize(env)
    @env = env
  end

  def index
    "<h1>All Articles</h1>"
  end
end
