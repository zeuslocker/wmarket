class HomeController < ApplicationController
  cell_path 'home'

  def index
    run Home::Index
    render_view :index
  end

  def contacts
    render_view :contacts
  end

  def garanty
    render_view :garanty
  end

  def public_contract
    render_view :public_contract
  end

  def comments
    render_view :comments
  end
end
