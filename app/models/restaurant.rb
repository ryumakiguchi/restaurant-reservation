class Restaurant < ApplicationRecord
  include RestaurantIF
  has_many :reservations
  belongs_to :wrapper
end
