# frozen_string_literal: true

# controllers/application_controller.rb
class ApplicationController
  attr_reader :env

  def initialize(env)
    @env = env
  end
end
