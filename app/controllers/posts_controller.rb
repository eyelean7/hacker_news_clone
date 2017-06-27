class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end
  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
private
  def post_params
    params.require(:post).permit(:title, :url)
  end
end
