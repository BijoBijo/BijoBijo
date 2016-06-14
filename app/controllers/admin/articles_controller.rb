class Admin::ArticlesController < ApplicationController
  layout 'admin.html.erb'

  def index
    @articles = Article.order(created_at: :desc)
  end

  def new
    @article = Article.new
    @article.images.build
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to admin_articles_path
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :status, images_attributes: [:id, :name, :status])
  end
end
