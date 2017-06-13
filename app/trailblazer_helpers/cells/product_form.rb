module TrailblazerHelpers
  module Cells
    module ProductForm
      include ActionView::Helpers::FormOptionsHelper # options_from_collection_for_select

      def form_model
        @form_model ||= options[:contract]
      end

      def categories
        @categories ||= options[:categories]
      end

      def required_first
        return true if index == 0
        false
      end
    end
  end
end
