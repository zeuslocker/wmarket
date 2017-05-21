module TrailblazerHelpers
  module Product
    class FindProduct
      extend ::Uber::Callable

      def self.call(options, params:, **)
        options['model'] = ::Product.find(params[:id])
      end
    end
  end
end
