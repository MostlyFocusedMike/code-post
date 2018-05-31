class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      flash[:log_in_warning] = "Your password or username was incorrect."
      render "new"
    end
  end

  def destroy
    session.delete :user_id
    redirect_to posts_path
  end
end
