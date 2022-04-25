class DropFlats < ActiveRecord::Migration[6.1]
  def change
    drop_table :flats
  end
end
