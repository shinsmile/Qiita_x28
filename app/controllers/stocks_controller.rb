class StocksController < ApplicationController
  before_action :set_stock, only: [:create, :update]

  def create
    # @stocks = Stock.where(user_id: current_user.id)
    @stock = Stock.create(user_id: current_user.id, article_id: params[:article_id])
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
