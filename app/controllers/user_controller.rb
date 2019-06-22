class UserController < ApplicationController
  def show
    @name = current_user.name
    @blog = current_user.blogs.order("created_at DESC")

  end
end
