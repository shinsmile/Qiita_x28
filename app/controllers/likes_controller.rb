class LikesController < ApplicationController
  before_action :set_article, only: [:create, :destroy]

  def create
    @like = Like.create(user_id: current_user.id, article_id: params[:article_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, article_id: params[:article_id])
    like.destroy
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end
