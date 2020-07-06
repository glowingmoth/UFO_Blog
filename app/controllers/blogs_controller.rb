class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all.order("created_at DESC")
  end

  def show
    @blog = Blog.find_by(id: params[:id])
    @comments = @blog.comments
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find_by(id: params[:id]) 
  end

  def create
    @blog = Blog.new(params.require(:blog).permit(:title, :body))
    @blog.user_id = current_user.id
    @blog.save
    redirect_to blogs_path
  end

  def update
    @blog = Blog.find_by(id: params[:id])
    @blog.update(params.require(:blog).permit(:title, :body))
    redirect_to blogs_path
  end

  def destroy
    @blog = Blog.find_by(id: params[:id])
    @blog.destroy
    redirect_to @blog
  end

end

def myblogs
  if user_signed_in?
    @blogs = Blog.where(user_id: current_user.id)
  end
end