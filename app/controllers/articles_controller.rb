class ArticlesController < ApplicationController
  layout "main"

  before_action :move_to_session, except: :index

  def index
  end

  def new
    @article = Article.new
  end

  def create
    if @article = Article.create(article_params)
      redirect_to action: :show, id: @article.id
    else
      redirect_to action: :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def stocks
    @stocks = Stock.where(user_id: current_user.id, is_stocked: 1)
  end

  private
  def article_params
    params.require(:article).permit(
      :user_id,
      :title,
      :body
    ).merge(tag_list: params[:article][:tag])
  end

  def move_to_session
    redirect_to "/users/sign_in" unless user_signed_in?
  end

end

    # @stock = Stock.create(user_id: current_user.id, article_id: params[:article_id], is_stocked: 1)
