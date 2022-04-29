class Booking < ApplicationRecord
  has_one :review
  belongs_to :user
end
