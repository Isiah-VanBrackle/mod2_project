class ChangeBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :img_url, :image
  end
end
