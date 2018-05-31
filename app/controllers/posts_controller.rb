class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  def index
    @posts = Post.all
  end

  def show
    @comment = Comment.new
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
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      render "new"
    end
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
