require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class ExperienceTableControllerTest < ActionController::TestCase
    test 'show' do
      get :show
      assert_response :success
    end
  end
end
