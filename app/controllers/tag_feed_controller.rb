class TagFeedController < ApplicationController
layout "main"
 #before_action except: :index


 def index
 end


  def show
    #@tags = ActsAsTaggableOn::Tag.all
    @article = Article.all.order("id DESC")
  end
end
