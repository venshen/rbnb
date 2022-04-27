class AddLocationToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :location, :text
  end
end
