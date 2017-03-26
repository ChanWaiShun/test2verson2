class CreateTestts < ActiveRecord::Migration
  def change
    create_table :testts do |t|
      t.string :name
      t.integer :current_user_id

      t.timestamps null: false
    end
  end
end
