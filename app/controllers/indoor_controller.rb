class IndoorController < ApplicationController
  def show
    @reservation = AbsReservation.find(params[:id])
  end

  private

  def indoor_params
    params.require(:indoor).permit(:name, :date, :time, :party_size)
  end
end
