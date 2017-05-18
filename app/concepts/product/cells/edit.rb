module Product::Cell
  class Edit < Trailblazer::Cell
    def show
      render 'form'
    end
  end
end
