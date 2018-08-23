class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to books_path #ask about the difference between render, and redirect_to
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)#is there more? it worked so there is nothing more.
    redirect_to login_path
  end
  # this comment marks the end of the class
end
