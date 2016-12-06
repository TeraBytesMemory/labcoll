class ResearchController < ApplicationController
  def index
    @projects = Project.page(1).per(9)
  end

  def list
    @research = Research.find(params[:id])
    @projects = Kaminari.paginate_array(@research.projects).page(params[:page]).per(9)
  end
end
