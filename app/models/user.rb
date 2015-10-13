class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_many :locations
  has_many :user_teams
  has_many :teams, through: :user_teams

  has_many :user_workspaces
  has_many :workspaces, through: :user_workspaces

  def self.from_facebook auth
    where(uid: auth.uid).first_or_create! do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
    end
  end
end
