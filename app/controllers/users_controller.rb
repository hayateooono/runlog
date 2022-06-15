class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @logs = user.logs.order("created_at DESC")
    
  end
end
