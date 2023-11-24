class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      redirect_to @post, alert: 'Error creating comment.'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post

    if @comment.user == current_user
      @comment.destroy
      redirect_to @post, notice: 'Comment was successfully destroyed.'
    else
      redirect_to @post, alert: 'You do not have permission to delete this comment.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end
