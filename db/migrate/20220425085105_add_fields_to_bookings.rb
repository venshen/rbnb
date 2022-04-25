class AddFieldsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :stars, :integer
    add_column :reviews, :comment, :text
  end
end
