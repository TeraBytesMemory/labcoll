class ResearchController < ApplicationController
  def index
    @laboratories = Laboratory.page(1).per(9)
  end

  def list
    @research = Research.find(params[:id])
    @laboratories = Kaminari.paginate_array(@research.laboratories).page(params[:page]).per(9)
  end
end
