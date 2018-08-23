class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.integer :user_id
      t.integer :book_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
