require_relative '../../../trailblazer_helpers/cells/four_cols_grid'
module Home::Cell
  class Index < Trailblazer::Cell
    include TrailblazerHelpers::Cells::FourColsGrid
  end
end
