class Product::Update < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract Product::Contract::ProductForm

  step Model(::Product, :find)
  step ::Trailblazer::Operation::Contract::Build()
  step ::Trailblazer::Operation::Contract::Validate(key: :product)
  step ::Trailblazer::Operation::Contract::Persist()
end
