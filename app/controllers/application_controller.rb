class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include ::Trailblazer::Rails::Controller
  include RenderOperationHelper

  def self.cell_path(path = '')
  @path = path
  end
end
