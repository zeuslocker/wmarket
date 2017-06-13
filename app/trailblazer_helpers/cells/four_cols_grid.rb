module TrailblazerHelpers
  module Cells
    module FourColsGrid
      def open_row(index)
        '<div class="row">'.html_safe if index % 3 == 0
      end

      def close_row(index)
        '</div>'.html_safe  if(index % 3 == 2)
      end
    end
  end
end
