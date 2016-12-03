class LaboratoryController < ApplicationController

  def index
  end

  def abstract
    @laboratory = Laboratory.find(params[:id])
  end
end
