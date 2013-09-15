require_dependency "atlantica_online_craft_calculator_engine/application_controller"

module AtlanticaOnlineCraftCalculatorEngine
  class ItemsController < ApplicationController
    def index
      @custom_prices = custom_prices_store.all
      AtlanticaOnlineCraftCalculator::Item.load_data_from_yaml(@custom_prices)
      unless params[:item_name].blank?
        @item = AtlanticaOnlineCraftCalculator::Item.find(params[:item_name])
        @crafter = AtlanticaOnlineCraftCalculator::Crafter.new(custom_skills_store.auto_craft || 1)
        if params[:count].blank?
          count = @item.batch_size
        else
          count = IntegerExtractor.non_negative_integer_from_string(params[:count])
        end
        @item_craft = AtlanticaOnlineCraftCalculator::ItemCraft.new(@item, count)
      end
    end
  end
end
