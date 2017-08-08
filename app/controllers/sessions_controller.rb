class SessionsController < ApplicationController
  before_action :require_new_user, only: [:new]

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      if session[:return_to]
        redirect_to session.delete(:return_to)
      else
        redirect_to @user
      end
    else
      flash[:error] = 'Wrong username or password.'
      redirect_to login_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end