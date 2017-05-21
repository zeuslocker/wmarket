class Order::Create < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract ::Order::Contract::OrderForm

  step Model(::Order, :new)
  step :setup_total_price
  failure :product_not_find, fail_fast: true
  step ::Trailblazer::Operation::Contract::Build()
  step ::Trailblazer::Operation::Contract::Validate(key: :order)
  step ::Trailblazer::Operation::Contract::Persist()

  def setup_total_price(options, params:, **)
    return false unless options['product'] = ::Product.find_by(id: params[:order][:product_id])
    options['model'].total_price = params[:order][:amount].to_f * options['product'].price
  end

  def product_not_find(options, **)
    options['step.errors']  = [] unless options['step.errors']
    options['step.errors'] << I18n.t('product.not_find')
  end
end
