class LaboratoryFollowController < ApplicationController
  before_action :logged_in_user

  def create
    @user = current_user
    @laboratory = Laboratory.find(params[:following_id])

    @user.laboratory_follow @laboratory
    respond_to do |format|
      format.html { redirect_to @laboratory }
      format.js
    end
  end

  def destory
    @user = current_user
    @laboratory = Laboratory.find(params[:following_id])

    @user.unlaboratory_follow @laboratory
    respond_to do |format|
      format.html { redirect_to @laboratory }
      format.js
    end
  end
end
