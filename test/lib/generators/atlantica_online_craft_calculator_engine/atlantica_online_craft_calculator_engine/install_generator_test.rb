require "test_helper"
require "generators/atlantica_online_craft_calculator_engine/install/install_generator"

module AtlanticaOnlineCraftCalculatorEngine
  class AtlanticaOnlineCraftCalculatorEngine::InstallGeneratorTest < Rails::Generators::TestCase
    tests AtlanticaOnlineCraftCalculatorEngine::InstallGenerator
    destination Rails.root.join("tmp/generators")
    setup :prepare_destination

    test "generator creates controller file" do
      run_generator

      assert_file "app/controllers/atlantica_online_craft_calculator_engine/application_controller.rb"
    end
  end
end
