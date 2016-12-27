class LaboratoryController < ApplicationController

  before_action :authenticate_user!

  def detail
    @laboratory = Laboratory.find(params[:id])
  end
end
