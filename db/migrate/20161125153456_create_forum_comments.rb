class CreateForumComments < ActiveRecord::Migration
  def change
    create_table :forum_comments do |t|
      t.string :user_name
      t.text :body
      t.integer :forum_id

      t.timestamps null: false
    end
  end
end
