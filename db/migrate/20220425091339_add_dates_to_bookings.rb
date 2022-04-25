class AddDatesToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :booking_start, :date
    add_column :bookings, :booking_end, :date
  end
end
