class CreateRecentChanges < ActiveRecord::Migration
  def change
    create_table :recent_changes do |t|
      t.string :version
      t.string :date
      t.text :title
      t.text :body

      t.timestamps null: false
    end
  end
end
