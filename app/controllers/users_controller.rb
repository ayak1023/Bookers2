class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@post_images = @user.post_images 不要？
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

end
