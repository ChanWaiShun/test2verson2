class CreateRecentChangeComments < ActiveRecord::Migration
  def change
    create_table :recent_change_comments do |t|
      t.string :user_name
      t.text :body
      t.integer :recent_change_id

      t.timestamps null: false
    end
  end
end
