module Product::Cell
  class New < Trailblazer::Cell
    def show
      @index = 0
      render 'form'
    end

    def form_model
      @form_model ||= options[:contract]
    end

    def index
      @index
    end

    def required_first
      return true if index == 0
      false
    end
  end
end
