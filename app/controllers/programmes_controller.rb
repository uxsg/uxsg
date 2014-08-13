class ProgrammesController < ApplicationController
  def index
    @programmes = Programme.order(happens_at: :asc).all
    @day_1 = Programme.day_1.order(happens_at: :asc).order(industry_track_id: :desc)
    @day_2 = Programme.day_2.order(happens_at: :asc).order(industry_track_id: :desc)
    @day_3 = Programme.day_3.order(happens_at: :asc).order(industry_track_id: :desc)
  end

  def show
    @programme = Programme.friendly.find params[:id]
  end
end
