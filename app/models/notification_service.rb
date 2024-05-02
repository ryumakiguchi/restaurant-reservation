class NotificationService < ApplicationRecord
  def update(reservation)
    puts "NotificationService: A new reservation has been created: #{reservation}"
  end
end
