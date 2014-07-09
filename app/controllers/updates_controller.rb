class UpdatesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.friendly.find(params[:id])
    @other_articles = Article.where.not(id: @article.id)
  end
end
