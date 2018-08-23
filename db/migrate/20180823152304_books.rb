class Books < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :genre
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
