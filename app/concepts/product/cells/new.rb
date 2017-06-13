module Product::Cell
  class New < Trailblazer::Cell
    include ::TrailblazerHelpers::Cells::ProductForm
    attr_reader :index

    def show
      @index = 0
      render 'form'
    end
  end
end
