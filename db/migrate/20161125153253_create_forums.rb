class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.text :topic
      t.text :body

      t.timestamps null: false
    end
  end
end
