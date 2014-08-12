class LocalGuidesController < ApplicationController
  def index
    redirect_to LocalGuide.first
  end

  def show
    @guides = LocalGuide.all.order(title: :asc)
    @guide = LocalGuide.friendly.find params[:id]
  end
end
