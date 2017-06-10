class ProductsController < ApplicationController
  cell_path 'product'

  def create
    run Product::Create do |result|
      return redirect_to root_path, notice: I18n.t('product.create')
    end
    render_view :edit, alert: AlertsViewHandler.call(result)
  end

  def new
    run Product::New
    render_view :new, options: {contract: result['contract.default']}
  end

  def edit
    run Product::Edit
    render_view :edit, options: {contract: result['contract.default']}
  end

  def update
    run Product::Update do |result|
      return redirect_to root_path, notice: I18n.t('product.update')
    end
    render_view :edit
  end

  def buy_form
    run Product::BuyForm
    render_view :buy_form
  end
end
