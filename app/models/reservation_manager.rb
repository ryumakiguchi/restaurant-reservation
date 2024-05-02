require 'observer'

class ReservationManager < ApplicationRecord
  include Observable

  def create_reservation(details)
    reservation = details

    changed
    notify_observers(reservation)
  end
end




# reservation_manager = ReservationManager.new
# notification_service = NotificationService.new
# reservation_log = ReservationLog.new

# reservation_manager.add_observer(notification_service)
# reservation_manager.add_observer(reservation_log)

# reservation_manager.create_reservation("Dinner for two at 7pm")
