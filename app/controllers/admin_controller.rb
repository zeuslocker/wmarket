class AdminController < ApplicationController
  cell_path 'admin'
  before_action :authenticate_admin!

  def index
    run Home::Index
    render_view :index
  end
end
