require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class CustomPricesControllerTest < ActionController::TestCase
    test 'index' do
      get :index, :use_route => :atlantica_online_craft_calculator_engine
      assert_response :success
    end

    test 'update' do
      put :update, :use_route => :atlantica_online_craft_calculator_engine
      assert_redirected_to custom_prices_path
    end

    test 'destroy' do
      delete :destroy, :use_route => :atlantica_online_craft_calculator_engine
      assert_redirected_to custom_prices_path
    end
  end
end
