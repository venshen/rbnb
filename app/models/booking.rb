class Booking < ApplicationRecord
  has_one :review
  belongs_to :item
  belongs_to :user
end
