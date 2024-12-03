require 'test_helper'

module AtlanticaOnlineCraftCalculatorEngine
  class ItemsControllerTest < ActionController::TestCase
    test 'index' do
      get :index
      assert_response :success
    end

    test 'index with skill' do
      get :index, params: {skill: "Action"}, xhr: true
      assert_response :success
    end

    test 'index with search' do
      get :index, params: {query: "craft"}, xhr: true
      assert_response :success
    end

    test 'index with item and no count' do
      get :index, params: {item_name: some_item_name}, xhr: true
      assert_response :success
    end

    test 'index with item and count' do
      get :index, params: {item_name: some_item_name, count: "10"}, xhr: true
      assert_response :success
    end

    test 'index with item and custom prices' do
      session[:custom_prices] = {"Ashen Jewel" => 1000}
      get :index, params: {item_name: some_item_name}, xhr: true
      assert_response :success
    end
  end
end
