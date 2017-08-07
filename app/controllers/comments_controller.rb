class CommentsController < ApplicationController
  before_action :set_post
  before_action :require_user

  def vote
    @comment = Comment.find(params[:id])
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
end