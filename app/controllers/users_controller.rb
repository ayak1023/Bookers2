class UsersController < ApplicationController
  def show
    @user = user.find(params[:id])
    #@post_images = @user.post_images 不要？
  end

  def edit
  end

  def index

  end

end
