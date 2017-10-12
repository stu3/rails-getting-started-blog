class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[article_params])

    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.permit(:title, :text)
    end
end
