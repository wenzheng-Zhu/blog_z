class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update, :show]

  def new
    @user = User.new
  end

  def update
    if @user.update(user_params)
      flash[:success] = "account was edited successfully!"
      redirect_to articles_path
    else
      render 'edit'
    end

  end

  def edit

  end

  def index
    @users = User.all
  end

  def show

  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Blog_z #{@user.username}"
      redirect_to articles_path
    else
      render 'new'
    end
  end


  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
