class LogsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:edit,:destroy]
  before_action :move_to_index, only: [:edit]

  def index
    @logs = Log.includes(:user).order("day DESC")
  end

  def new
    @log = Log.new
  end

  def create
   @log = Log.new(log_params)
   if @log.save
    redirect_to root_path
   else
    render :new
   end
  end

  def show
    @log = Log.find(params[:id])
  end

  def edit
    @log = Log.find(params[:id])
  end

  def update
    @log = Log.find(params[:id])
    if @log.update(log_params)
      redirect_to log_path
    else
      render :edit
    end
  end

  def destroy
    log = Log.find(params[:id])
    if log.destroy
      redirect_to root_path
    end
  end
  

  private

  def log_params
    params.require(:log).permit(:title,:day,:distance,:hour_time,:min_time,:sec_time,:place,:image,:content).merge(user_id: current_user.id)
  end

  def move_to_index
    @log = Log.find(params[:id])
    unless current_user.id == @log.user.id
      redirect_to action: :index
    end
  end


end
