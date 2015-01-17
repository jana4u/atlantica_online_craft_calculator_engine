require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class CustomSkillsControllerTest < ActionController::TestCase
    test 'index' do
      get :index
      assert_response :success
    end

    test 'update' do
      put :update
      assert_redirected_to custom_skills_path
    end
  end
end
