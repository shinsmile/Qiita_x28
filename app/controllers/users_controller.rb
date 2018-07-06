class UsersController < ApplicationController
  layout 'main'

  def index
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end





# 以下like private commentpageはviewを呼ぶアクション
# 記述が効率悪い？
  def like
   @user = User.find(params[:id])
  end

  def private
   @user = User.find(params[:id])
  end

  def commentpage
   @user = User.find(params[:id])
  end

end
