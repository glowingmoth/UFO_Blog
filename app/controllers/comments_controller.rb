class CommentsController < ApplicationController
  def create
    @blog = Blog.find_by(params[:blog_id])
    @comment = @blog.comments.create(params.require(:comment).permit(:body, :blog_id))
    redirect_to @blog
  end

  def new
  end

  def update
  end

  def destroy
  end
end
