class CreateWorkspaces < ActiveRecord::Migration
  def change
    create_table :workspaces do |t|
      t.string :name
      t.integer :status

      t.float :radius

      t.timestamps null: false
    end
  end
end
