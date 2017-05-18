module Home::Cell
  class Product < Trailblazer::Cell
    include ActionView::Helpers::OutputSafetyHelper

    property :avatar, :desc, :title, :price

    def with_row
      raw("<div class=\"row\">#{show}</div>")
    end

    def product_price
      raw("#{I18n.t('product.for_item')} - #{price}$")
    end
  end
end
