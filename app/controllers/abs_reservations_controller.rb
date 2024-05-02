class AbsReservationsController < ApplicationController
  def index
    reservations = AbsReservation.all
    date_filter = DateFilter.new(reservations, params[:date])
    size_filter = SizeFilter.new(date_filter.apply, params[:size])
    @reservations = size_filter.apply
  end

  def show_inside
    @indoor = Indoor.new
  end

  def show_outside
    @outdoor = Outdoor.new
  end

  def create
    type = params[:type].to_sym # :outdoor or :indoor
    details = abs_reservation_params
    @abs_reservation = ReservationFactory.create_reservation(type, details)

    if @abs_reservation.save
      redirect_to @abs_reservation, notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  private

  def abs_reservation_params
    params.require(:abs_reservation).permit(:date, :time, :party_size, :dining_area)
  end

  def reservation_params
    params.require(:abs_reservation).permit(:name, :date, :time, :party_size, :location)
  end
end
