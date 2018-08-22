class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to user_path(@user)
    else
        render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    User.destroy(params[:id])
    redirect_to

  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
  # this comment marks the end of the class
end
