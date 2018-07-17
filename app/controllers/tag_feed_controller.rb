class TagFeedController < ApplicationController
layout "main"
 #before_action except: :index


 def index
  ##@user = current_user
 end


  def show
   #@user = User.find(params[:id])
   #@tweets = @user.tweets.order('created_at DESC').page(params[:page])
   @article = Article.all
  end
end
