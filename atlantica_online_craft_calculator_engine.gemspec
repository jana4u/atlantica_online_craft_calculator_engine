$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "atlantica_online_craft_calculator_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "atlantica_online_craft_calculator_engine"
  s.version     = AtlanticaOnlineCraftCalculatorEngine::VERSION
  s.authors     = ["Jana Dvořáková (Jana4U)"]
  s.email       = ["jana4u@seznam.cz"]
  s.homepage    = "https://github.com/jana4u/atlantica_online_craft_calculator_engine"
  s.summary     = "Craft Calculator for MMORPG Atlantica Online as Rails Mountable Engine."
  s.description = "Craft Calculator for MMORPG Atlantica Online as Rails Mountable Engine."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '> 3.2'
  # s.add_dependency "jquery-rails"
  s.add_dependency 'atlantica_online_craft_calculator'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "simplecov"
end
