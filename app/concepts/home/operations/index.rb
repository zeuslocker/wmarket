class Home::Index < Trailblazer::Operation
  step :setup_products

  def setup_products(options, params:, **)
    products = ::Product.all.group_by(&:category).to_a
    products[0], products[1] = products[1], products[0]
    products[1], products[2] = products[2], products[1]

    options['model'] = products.map{|c, p| p}.flatten
  end
end
