class AddProfileIdToProfileContents < ActiveRecord::Migration
  def change
    add_column :profile_contents, :profile_id, :integer
  end
end
