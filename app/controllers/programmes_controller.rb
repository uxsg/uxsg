class ProgrammesController < ApplicationController
  def index
    @programmes = Programme.all.order(happens_at: :asc)
    @day_1 = Programme.day_1.order(happens_at: :asc)
    @day_2 = Programme.day_2.order(happens_at: :asc)
    @day_3 = Programme.day_3.order(happens_at: :asc)
  end

  def show
    @programme = Programme.friendly.find params[:id]
  end
end
