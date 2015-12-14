class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def edit
  end

  def show
    @post = Post.find( params[:user_id] )
  end
end
