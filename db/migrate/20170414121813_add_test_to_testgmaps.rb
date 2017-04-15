class AddTestToTestgmaps < ActiveRecord::Migration
  def change
    add_column :testgmaps, :test, :text
  end
end
