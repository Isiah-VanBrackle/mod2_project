class ApplicationController < ActionController::Base
  helper_method :is_loggedin?, :current_user

  def authorized
    redirect_to login_path unless session[:user_id]
  end

  def current_user
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  def is_loggedin?
    !!current_user
  end
end
