class Product::Update < Trailblazer::Operation
  extend ::Trailblazer::Operation::Contract::DSL
  contract Product::Contract::ProductForm

  step Model(::Product, :find)
  success :destroy_persisted_attachments
  step ::Trailblazer::Operation::Contract::Build()
  step ::Trailblazer::Operation::Contract::Validate(key: :product)
  step ::Trailblazer::Operation::Contract::Persist()

  def destroy_persisted_attachments(options, **)
    options['model'].attachments.destroy_all
  end
end
