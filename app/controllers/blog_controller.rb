class BlogController < ApplicationController

  def index
    @blog = Blog.all.order("id DESC")
  end
end
