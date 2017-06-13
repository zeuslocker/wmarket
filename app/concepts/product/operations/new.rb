class Product::New < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract Product::Contract::ProductForm

  step Model(::Product, :new), name: :setup_model
  step ::Trailblazer::Operation::Contract::Build()
  step :contract_prepopulate
  step :setup_categories

  def contract_prepopulate(options, **)
    options['contract.default'].prepopulate!({})
  end

  def setup_categories(options, **)
    options['categories'] = ::Category.all
  end
end
