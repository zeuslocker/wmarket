module Home::Cell
  class Product < Trailblazer::Cell
    include ActionView::Helpers::OutputSafetyHelper

    property :avatar, :desc, :title, :price

    def with_row
      raw("<div class=\"row\">#{show}</div>")
    end

    def product_price
      raw("#{price} руб")
    end
  end
end
