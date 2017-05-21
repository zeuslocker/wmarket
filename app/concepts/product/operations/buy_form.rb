require_relative '../../../trailblazer_helpers/product/find_product'

class Product::BuyForm < Trailblazer::Operation
  step ::TrailblazerHelpers::Product::FindProduct
end
