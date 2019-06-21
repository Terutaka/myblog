class BlogController < ApplicationController

  def index
    @blog = Blog.all.order("id DESC")
  end

  def new
    
  end

  def create
    Blog.create(blog_params)
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  def show
    
  end
  private
  def blog_params
    params.permit(:title, :text)
    
  end
end
