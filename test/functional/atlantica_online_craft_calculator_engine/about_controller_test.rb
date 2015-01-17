require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class AboutControllerTest < ActionController::TestCase
    test 'show' do
      get :show
      assert_response :success
    end
  end
end
