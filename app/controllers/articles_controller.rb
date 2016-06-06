class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(article_params[:id])
  end

  private
  def article_params
    params.permit(:id)
  end
end
