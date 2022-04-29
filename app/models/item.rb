class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  paginates_per 12
end
