class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @comments = Comment.all
  end
  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to '/comments'
    else
      render 'new'
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
