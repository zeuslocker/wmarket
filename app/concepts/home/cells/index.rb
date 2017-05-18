module Home::Cell
  class Index < Trailblazer::Cell
    def show_products
      concept('home/cell/product', collection: model).join do |cell, index|
        (index % 3 == 0) ? cell.(:with_row) : cell.(:show)
      end
    end

    def open_row(index)
      '<div class="row">'.html_safe if index % 3 == 0
    end

    def close_row(index)
      '</div>'.html_safe  if(index % 3 == 2)
    end
  end
end
