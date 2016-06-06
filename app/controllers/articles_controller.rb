class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(article_params)
  end

  private
  def article_params
    params.permi(:id)
  end
end
