class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.create post_params
    @current_user.posts << post
    redirect_to user_path(@current_user)
  end

  def edit
  end

  def show
    @post = Post.find( params[:id] )
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
end
