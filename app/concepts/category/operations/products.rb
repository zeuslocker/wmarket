class Category::Products < Trailblazer::Operation
  step :setup_model

  def setup_model(options, params:, **)
    options['model'] = ::Product.where(category_id: params[:id])
  end
end
