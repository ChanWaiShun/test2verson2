class CreateTestgmaps < ActiveRecord::Migration
  def change
    create_table :testgmaps do |t|
      t.integer :latitude
      t.integer :longitude
      t.string :address
      t.text :description
      t.string :title

      t.timestamps null: false
    end
  end
end
