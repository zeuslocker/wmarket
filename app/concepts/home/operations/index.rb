class Home::Index < Trailblazer::Operation
  step :setup_products

  def setup_products(options, params:, **)
    options['model'] = ::Product.all
  end
end
