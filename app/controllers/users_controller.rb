class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def update
  end

  def edit
  end

  def index
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

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
