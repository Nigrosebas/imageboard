class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :password
      t.text :content
      t.string :img
      t.integer :topic_id

      t.timestamps
    end
  end
end
