class CommentsController < ApplicationController
  def create
    @blog = Blog.find_by_id(params[:blog_id])
    @comment = @blog.comments.new(params.require(:comment).permit(:body, :blog_id))
    @comment.user_id = current_user.id
    @comment.save
    redirect_to @blog
  end

  def new
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    @blog = @comment.blog
    @comment.destroy
    redirect_to @blog
  end
end
