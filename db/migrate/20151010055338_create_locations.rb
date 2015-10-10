class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.integer :workspace_id
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :locations, :workspace_id
    add_index :locations, :user_id
  end
end
