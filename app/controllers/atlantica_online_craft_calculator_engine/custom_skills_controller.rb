require_dependency "atlantica_online_craft_calculator_engine/application_controller"

module AtlanticaOnlineCraftCalculatorEngine
  class CustomSkillsController < ApplicationController
    def update
      if params[:auto_craft].blank?
        session[:auto_craft] = nil
      else
        session[:auto_craft] = [[IntegerExtractor.non_negative_integer_from_string(params[:auto_craft]), 1].max, 120].min
      end

      redirect_to custom_skills_url
    end
  end
end
