class Order::New < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract ::Order::Contract::OrderForm

  step :setup_model
  step ::Trailblazer::Operation::Contract::Build()

  def setup_model(options, params:, **)
    options['model'] = ::Order.new(product_id: params[:product_id])
  end
end
