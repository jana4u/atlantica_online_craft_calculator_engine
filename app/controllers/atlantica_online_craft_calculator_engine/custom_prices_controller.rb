require_dependency "atlantica_online_craft_calculator_engine/application_controller"

module AtlanticaOnlineCraftCalculatorEngine
  class CustomPricesController < ApplicationController
    def index
      AtlanticaOnlineCraftCalculator::Item.load_data_from_yaml
      begin
        @items = AtlanticaOnlineCraftCalculator::Item.find(params[:item_name]).ordered_ingredient_items
      rescue AtlanticaOnlineCraftCalculator::InvalidItem
        @items = AtlanticaOnlineCraftCalculator::Item.ordered_ingredient_items
      end
      @custom_prices = custom_prices_store.all
    end

    def update
      custom_prices_hash = {}

      if params[:custom_prices]
        params[:custom_prices].each do |key, value|
          custom_prices_hash[CGI::unescape(key)] = value
        end
      end

      custom_prices_store.update_all(custom_prices_hash)

      redirect_to item_custom_prices_url
    end

    def destroy
      custom_prices_store.delete_all

      redirect_to item_custom_prices_url
    end
  end
end
