class HomeController < ApplicationController
  def index
    @updates = Article.published.order(published_at: :desc)
  end

  def privacy
  end

  def terms
  end
end
