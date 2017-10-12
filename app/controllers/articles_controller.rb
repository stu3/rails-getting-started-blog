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

    if @article.save
       #do something if it saves
       redirect_to @article
    else
       render plain: "Something is wrong here."
    end

    #@article.save
    #redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
      params.permit(:title, :text)
    end
end
