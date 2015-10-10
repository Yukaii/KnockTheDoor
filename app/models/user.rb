class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :locations
  has_many :user_teams
  has_many :teams, through: :user_teams

  has_many :user_workspaces
  has_many :workspaces, through: :user_workspaces
end
