class BlogController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @blog = Blog.includes(:user).order("id DESC")
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(title: blog_params[:title], text: blog_params[:text], user_id: current_user.id)
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params) if blog.user_id == current_user.id
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy if blog.user_id == current_user.id
  end

  def show
    
  end
  private
  def blog_params
    params.require(:blog).permit(:title, :text)
    
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
