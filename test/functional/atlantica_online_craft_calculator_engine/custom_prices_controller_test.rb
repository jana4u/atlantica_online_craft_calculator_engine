require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class CustomPricesControllerTest < ActionController::TestCase
    test 'index' do
      get :index
      assert_response :success
    end

    test 'update' do
      put :update
      assert_redirected_to custom_prices_path
    end

    test 'destroy' do
      delete :destroy
      assert_redirected_to custom_prices_path
    end
  end
end
