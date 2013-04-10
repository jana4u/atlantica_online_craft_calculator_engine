module AtlanticaOnlineCraftCalculatorEngine
  module BaseController
    def self.included(controller)
      controller.class_eval do
        helper_method :item_custom_prices_url

        def item_custom_prices_url
          custom_prices_path(:item_name => params[:item_name])
        end

        def custom_prices_store
          @custom_prices_store ||= CustomPricesSessionStore.new(session)
        end
      end
    end
  end
end
