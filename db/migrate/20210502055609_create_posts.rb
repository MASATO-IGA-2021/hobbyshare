class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :body
      t.string :image
      t.string :tittle
      t.integer :user_id
      t.integer :room_id
      t.timestamps
    end
  end
end
