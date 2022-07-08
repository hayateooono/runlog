class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @logs = @user.logs.order("day DESC")
  end
end
