module Product::Cell
  class New < Trailblazer::Cell
    def show
      render 'form'
    end
  end
end
