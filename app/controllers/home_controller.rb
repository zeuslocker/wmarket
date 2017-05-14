class HomeController < ApplicationController
  cell_path 'home'

  def index
    run Home::Index
    render_view :index
  end
end
