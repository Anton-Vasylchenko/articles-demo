class FixUserColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :user_image, :image_data
  end
end
