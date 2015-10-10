class Workspace < ActiveRecord::Base
  has_one :location
  has_many :user_workspaces
  has_many :users, through: :user_workspaces

  enum status: [ :up, :down, :nobody, :active, :opened ]
end
