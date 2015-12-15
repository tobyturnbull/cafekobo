class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
  end

  def create
    comment = Comment.create comment_params
    post = Post.find params[:post_id]
    post.comments << comment
    @current_user.comments << comment
    redirect_to user_path(post.user)
  end

  def edit
  end

  def show
    @comment = Comment.find( params[:id] )
  end

  private 
  def comment_params 
    params.require(:comment).permit(:content)  
  end
end
