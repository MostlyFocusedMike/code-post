class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  def index
    @posts = Post.all
  end

  def show

  end

  def new
    if logged_in?
      @post = Post.new
    else
      flash[:log_in_warning] = "You have to be logged in to make a new post"
      redirect_to login_path
    end
  end

  def create

  end

  private

    def set_post
      @post = Post.find(params[:id])
    end
end