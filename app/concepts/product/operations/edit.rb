class Product::Edit < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract Product::Contract::ProductForm

  step Model(::Product, :find)
  step ::Trailblazer::Operation::Contract::Build()
end
