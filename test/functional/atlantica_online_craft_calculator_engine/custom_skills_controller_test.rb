require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class CustomSkillsControllerTest < ActionController::TestCase
    test 'index' do
      get :index, :use_route => :atlantica_online_craft_calculator_engine
      assert_response :success
    end

    test 'update' do
      put :update, :use_route => :atlantica_online_craft_calculator_engine
      assert_redirected_to custom_skills_path
    end
  end
end
