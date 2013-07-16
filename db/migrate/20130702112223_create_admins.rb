class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :user
      t.string :password
      t.string :privilege

      t.timestamps
    end
  end
end
