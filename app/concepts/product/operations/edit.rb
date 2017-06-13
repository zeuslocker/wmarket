require_relative 'new'

class Product::Edit < Product::New
  step Model(::Product, :find), replace: :setup_model
end
