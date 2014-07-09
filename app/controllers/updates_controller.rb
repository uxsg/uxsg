class UpdatesController < ApplicationController
  def index
    @articles = Article.published
  end

  def show
    @article = Article.published.friendly.find(params[:id])
    @other_articles = Article.published.where.not(id: @article.id)
  end
end
