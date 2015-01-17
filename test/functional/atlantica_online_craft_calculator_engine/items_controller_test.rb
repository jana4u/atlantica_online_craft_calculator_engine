require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class ItemsControllerTest < ActionController::TestCase
    test 'index' do
      get :index
      assert_response :success
    end
  end
end
