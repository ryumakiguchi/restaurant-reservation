class ReservationLog < ApplicationRecord
  def update(reservation)
    puts "ReservationLog: A new reservation has been created: #{reservation}"
  end
end
