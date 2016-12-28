class LaboratoryFollowController < ApplicationController
  before_action :authenticate_user!

  def create
    @laboratory = Laboratory.find(params[:following_id])

    current_user.laboratory_follow @laboratory
    respond_to do |format|
      format.html { redirect_to @laboratory }
      format.js
    end
  end

  def destroy
    @laboratory = Laboratory.find(params[:following_id])

    current_user.unlaboratory_follow @laboratory
    respond_to do |format|
      format.html { redirect_to @laboratory }
      format.js
    end
  end
end
