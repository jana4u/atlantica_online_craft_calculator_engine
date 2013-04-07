class AtlanticaOnlineCraftCalculatorEngine::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def create_engine_application_controller
    copy_file 'application_controller.rb', 'app/controllers/atlantica_online_craft_calculator_engine/application_controller.rb'
  end
end
