class ResearchController < ApplicationController
  def index
    @projects = Project.page(1)
  end

  def list
    @research = Research.find(params[:id])
  end
end
