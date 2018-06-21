class ArticlesController < ApplicationController

  def index
  end

  def new
    @article = Article.new
  end

  def create
    if Article.create(article_params)
      redirect_to :root
    else
      redirect_to action: :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(
      :user_id,
      :title,
      :body
    )
  end


end
