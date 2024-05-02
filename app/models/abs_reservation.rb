class AbsReservation < ApplicationRecord
  belongs_to :restaurant
  has_one :indoor
  has_one :outdoor
end
