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
      @custom_prices = session[:custom_prices] || {}
    end

    def update
      session[:custom_prices] = {}

      if params[:custom_prices]
        params[:custom_prices].each do |item_name, price|
          unless price.blank?
            session[:custom_prices][CGI::unescape(item_name)] = IntegerExtractor.non_negative_integer_from_string(price)
          end
        end
      end

      redirect_to item_custom_prices_url
    end

    def destroy
      session[:custom_prices] = {}

      redirect_to item_custom_prices_url
    end
  end
end
