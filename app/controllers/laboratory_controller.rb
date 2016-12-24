class LaboratoryController < ApplicationController

  def index
  end

  def detail
    @laboratory = Laboratory.find(params[:id])
  end
end
