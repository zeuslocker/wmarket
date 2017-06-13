class CategoriesController < ApplicationController
  def products
    run Category::Products
    render_view :products
  end
end
