class ArticlesController < ApplicationController
<<<<<<< HEAD

  def index
    @articles = Article.all
  end

=======
>>>>>>> c93a7315a24ec8c6e5e3f2db7de5138407a66dc1
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[article_params])
<<<<<<< HEAD

    if @article.save
      render plain: "Good"
    else
      render plain: "Error"
    end
    redirect_to @article
=======
    if @article.save
       #do something if it saves
       redirect_to @article
    else
       render plain: "Something is wrong here."
    end 

    #@article.save
    #redirect_to @article
>>>>>>> c93a7315a24ec8c6e5e3f2db7de5138407a66dc1
  end

  private
    def article_params
<<<<<<< HEAD
      params.require(:article).permit(:title, :text)
=======
      params.permit(:title, :text)  
>>>>>>> c93a7315a24ec8c6e5e3f2db7de5138407a66dc1
    end
end
