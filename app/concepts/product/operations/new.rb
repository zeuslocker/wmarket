class Product::New < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract Product::Contract::ProductForm

  step Model(::Product, :new)
  step ::Trailblazer::Operation::Contract::Build()
end
