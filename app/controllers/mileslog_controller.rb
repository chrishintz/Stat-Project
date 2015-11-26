class MileslogController < ApplicationController

  def index
    @logs = Mileslog.all
  end

  def add_stat
    @log                  = Mileslog.new
    @log.odometer         = params[:odometer]
    @log.gas              = params[:gas]
    @log.oil              = params[:oil]
    @log.gallons_filled   = params[:gallons_filled]
    if @log.save
      redirect_to "/"
    else
      @logs               = Mileslog.all
      render :index
    end
  end

  def remove_stat
    @log = Mileslog.find(params[:id])
    @log.destroy
    redirect_to home_path
  end

  private

  def log_params
    params.require(:mileslog).permit(:odometer, :gas, :oil, :gallons_filled)
  end
end
