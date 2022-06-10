class LogsController < ApplicationController

  def index
    @logs = Log.all
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

  private

  def log_params
    params.require(:log).permit(:content,:day,:distance,:time,:place,:image).merge(user_id: current_user.id)
  end


end
