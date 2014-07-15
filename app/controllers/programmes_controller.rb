class ProgrammesController < ApplicationController
  def index
    @programmes = Programme.all.order(happens_at: :asc)
  end

  def show
    @programme = Programme.friendly.find params[:id]
  end
end
