class HomeController < ApplicationController
  def index
    @updates = Article.published.order(published_at: :desc)
  end

  def about
    @experience = Volunteer.where(team: "experience design").order(last_name: :asc)
    @operations = Volunteer.where(team: "operations").order(last_name: :asc)
    @product = Volunteer.where(team: "product & marketing").order(last_name: :asc)
  end

  def call_for_submissions
  end

  def privacy
  end

  def terms
  end

  def volunteer
  end
end
