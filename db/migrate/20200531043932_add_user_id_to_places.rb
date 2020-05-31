class AddUserIdToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :user_id, :integer, null:false, foreign_key: true
  end
end
