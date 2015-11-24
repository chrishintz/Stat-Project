class MilesController < ApplicationController

  def index
    @log = @Mileslog.all
  end

  def add_stat
    @log = @Mileslog.new(log_params)
    if @log.save
      redirect_to "/"
    else
      render add_stat
    end
  end

  def remove_stat
  end

  private

  def log_params
    params.require(:mileslog).permit(:odometer, :gas, :oil, :gallons_filled)
  end
end
