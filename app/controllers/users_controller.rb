class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  def index # FOR NOW ONLY
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
      render "new"
    end
  end

  def edit
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
    def set_user
      @user = User.find(params[:id])
    end
end
