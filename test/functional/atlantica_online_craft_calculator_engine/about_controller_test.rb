require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class AboutControllerTest < ActionController::TestCase
    test 'show' do
      get :show, :use_route => :atlantica_online_craft_calculator_engine
      assert_response :success
    end
  end
end
