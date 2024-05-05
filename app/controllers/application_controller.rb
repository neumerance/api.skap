# frozen_string_literal: true

# ApplicationController serves as the parent class for all controllers in the application.
# It provides common functionality and configurations that are shared across controllers.
class ApplicationController < ActionController::API
  def info
    logo = File.read(Rails.root.join('app/views/layouts/ascii-logi.txt'))

    render plain: logo
  end
end
