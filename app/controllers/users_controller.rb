class UsersController < ApplicationController
  layout "main"

  before_action :move_to_session, except: :index

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to :root
  end

  def user_params
    params.permit(
      :name,
      :email
    ).merge(tag_list: params[:tag])
  end

  def move_to_session
    redirect_to "/users/sign_in" unless user_signed_in?
  end

end
