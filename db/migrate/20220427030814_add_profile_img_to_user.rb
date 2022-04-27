class AddProfileImgToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_img, :text
  end
end
