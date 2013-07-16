class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :first_post
      t.string :title
      t.integer :count_post
      t.integer :category_id

      t.timestamps
    end
  end
end
