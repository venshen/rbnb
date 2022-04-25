class AddFieldsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :picture_url, :text
    add_column :items, :address, :text
    add_column :items, :price, :float
    add_column :items, :deposit, :float
  end
end
