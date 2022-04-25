class AddAddressToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :address, :string
  end
end
