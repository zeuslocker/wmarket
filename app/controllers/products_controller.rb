class ProductsController < ApplicationController
  cell_path 'product'
  before_action :authenticate_admin!
  def create
    run Product::Create do |result|
      return redirect_to root_path, notice: I18n.t('product.create')
    end
    render_view :edit, alert: AlertsViewHandler.call(result)
  end

  def new
    run Product::New
    render_view :new, options: {contract: result['contract.default'], categories: result['categories']}
  end

  def edit
    run Product::Edit
    render_view :edit, options: {contract: result['contract.default'], categories: result['categories']}
  end

  def update
    run Product::Update do |result|
      return redirect_to root_path
    end
    render_view :edit
  end

  def buy_form
    run Product::BuyForm
    render_view :buy_form
  end

  def destroy
    ::Product.find_by(id: params[:id]).destroy
    redirect_to controller: :admin, action: :index
  end
end
