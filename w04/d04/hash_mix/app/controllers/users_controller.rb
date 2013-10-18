class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.new params[:user]
    if user.save
      redirect_to :back
    else
      raise
    end
  end

end
