class Item < ApplicationRecord
  belongs_to :user
  paginates_per 12
end
