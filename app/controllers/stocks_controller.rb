class StocksController < ApplicationController
  before_action :set_stock, only: [:create, :destory, :update]

  def create
    @stock = Stock.create(user_id: current_user.id, article_id: params[:article_id])
  end

  def destory
    stock = Stock.find_by(user_id: current_user.id, article_id: params[:article_id])
    stock.destroy
  end

  def update
    @stock = Stock.find(params[:id])
    @stock = @stock.update(user_id: current_user.id, article_id: params[:article_id], is_stocked: params[:is_stocked])
    @stock = Stock.find(params[:id])
  end

  def set_stock
    @article = Article.find(params[:article_id])
  end

end
