class ApplicationController < ActionController::Base

  def authorized
    redirect_to login_path unless session[:user_id]
  end

  def current_user
    if session[:user_id]
      @user = User.find_by(session[:user_id])
    end
  end

  def is_loggedin?
    !!current_user
  end
end
