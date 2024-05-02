class ReservationFactory < ApplicationRecord
  def self.create_reservation(type, details)
    case type
    when :outdoor
      Outdoor.create(details)
    when :indoor
      Indoor.create(details)
    else
      raise "Invalid reservation type: #{type}"
    end
  end
end
