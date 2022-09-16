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
    @article = Article.new
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

end
