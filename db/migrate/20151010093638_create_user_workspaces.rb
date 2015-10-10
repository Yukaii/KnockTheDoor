class CreateUserWorkspaces < ActiveRecord::Migration
  def change
    create_table :user_workspaces do |t|
      t.integer :user_id
      t.integer :workspace_id

      t.timestamps null: false
    end
  end
end
