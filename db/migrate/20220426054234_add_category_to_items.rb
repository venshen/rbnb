class AddCategoryToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :category, :text
  end
end
