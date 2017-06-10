class Product::Edit < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract Product::Contract::ProductForm

  step Model(::Product, :find)
  step ::Trailblazer::Operation::Contract::Build()
  step :contract_prepopulate

  def contract_prepopulate(options, **)
    options['contract.default'].prepopulate!({})
  end
end
