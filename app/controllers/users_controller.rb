class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    
  end

  def new
    if logged_in?
      redirect_to posts_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email,:bio,  :password, :password_confirmation)
    end
    def set_user
      @user = User.find(params[:id])
    end
end
