require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class CustomPricesControllerTest < ActionController::TestCase
    test 'index without custom prices' do
      get :index
      assert_response :success
    end

    test 'index with custom prices' do
      session[:custom_prices] = {some_item_name => 1000}
      session[:crafting_disabled] = [some_item_name]
      get :index
      assert_response :success
    end

    test 'index for item' do
      get :index, params: {item_name: some_item_name}
      assert_response :success
    end

    test 'update' do
      put :update, params: {
        custom_prices: {url_escaped_item_name => "1000"},
        crafting_disabled: [some_item_name]
      }
      assert_redirected_to custom_prices_path
    end

    test 'destroy' do
      delete :destroy
      assert_redirected_to custom_prices_path
    end
  end
end
