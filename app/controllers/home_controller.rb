class HomeController < ApplicationController
  def index
    @updates = Article.published.order(published_at: :desc)
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
