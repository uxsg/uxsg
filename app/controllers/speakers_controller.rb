class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all.order(last_name: :asc)
  end

  def show
    @speaker = Speaker.friendly.find params[:id]
    @more_speakers = Speaker.where.not(id: @speaker.id)
  end
end
