# app/models/concerns/reservation_if.rb
module ReservationIF
  extend ActiveSupport::Concern

  included do
    def get_details
      raise NotImplementedError, "You must implement #{__method__}."
    end
  end
end
