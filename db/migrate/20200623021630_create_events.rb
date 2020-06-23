class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start, null: false
      t.datetime :end, null: false
      t.integer  :user_id, null: false, foreign_key: true
      t.integer  :place_id, null: false, foreign_key: true
      t.timestamps  
    end
  end
end
