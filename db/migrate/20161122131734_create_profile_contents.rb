class CreateProfileContents < ActiveRecord::Migration
  def change
    create_table :profile_contents do |t|
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end
