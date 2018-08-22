class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      redirect_to login_path
    end
  end

  def destroy
    sessions.delete(user_id)#is there more?
    redirect_to login_path
  end
  # this comment marks the end of the class
end
