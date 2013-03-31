require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class ItemsControllerTest < ActionController::TestCase
    test 'index' do
      get :index, :use_route => :atlantica_online_craft_calculator_engine
      assert_response :success
    end
  end
end
