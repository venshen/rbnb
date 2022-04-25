class AddItemToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :item, null: false, foreign_key: true
  end
end
