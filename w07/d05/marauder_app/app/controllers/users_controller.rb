class UsersController < ApplicationController
  respond_to :json

  def index
    @users = User.all
    respond_with @users
  end

  def create
    @user = User.create params[:user]
    respond_with @user
  end

  def view
    @user = User.find params[:id]
    respond_with @user
  end

end
