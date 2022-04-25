class AddUserToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :user, null: false, foreign_key: true
  end
end
