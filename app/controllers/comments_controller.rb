class CommentsController < ApplicationController
  before_action :set_post
  before_action :require_user
  before_action :set_comment, only: [:vote] 

  def vote
    @vote = Vote.create(vote: params[:vote], creator: current_user, voteable: @comment)

    respond_to do |format|
      format.js
    end
  end

  def create
    @comment = @post.comments.build(params.require(:comment).permit(:body))

    @comment.creator = current_user

    if @comment.save
      flash[:notice] = "Saved comment"
      redirect_to @post
    else
      render "/posts/show"
    end
  end

  private
  def set_post
    @post = Post.find_by(slug: params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end