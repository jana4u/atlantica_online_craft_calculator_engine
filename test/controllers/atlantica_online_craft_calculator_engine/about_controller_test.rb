require "test_helper"

module AtlanticaOnlineCraftCalculatorEngine
  class AboutControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "show" do
      get about_path

      assert_response :success
    end
  end
end
