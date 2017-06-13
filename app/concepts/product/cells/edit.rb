require_relative '../../../trailblazer_helpers/cells/product_form'

module Product::Cell
  class Edit < Trailblazer::Cell
    include ::TrailblazerHelpers::Cells::ProductForm
    attr_reader :index
    def show
      @index = 0
      render 'form'
    end
  end
end
