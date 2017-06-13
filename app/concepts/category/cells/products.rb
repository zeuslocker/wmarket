require_relative '../../../trailblazer_helpers/cells/four_cols_grid'

module Category::Cell
  class Products < Trailblazer::Cell
    include TrailblazerHelpers::Cells::FourColsGrid

    def active(category)
      return :active if category.id == params[:id]
    end
  end
end
