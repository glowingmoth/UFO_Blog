class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all.order("created_at DESC")
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
