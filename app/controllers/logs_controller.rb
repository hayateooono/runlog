class LogsController < ApplicationController

  def index
    @logs = Log.includes(:user).order("created_at DESC")
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
    params.require(:log).permit(:content,:day,:distance,:time,:place,:image).merge(user_id: current_user.id)
  end


end
