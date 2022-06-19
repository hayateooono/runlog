class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @logs = @user.logs.order("created_at DESC")
    
  end
end
