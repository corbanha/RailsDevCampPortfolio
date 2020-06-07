class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # confirmable = when user signs up for application, can't actually use until they confirm via email
  # locakable = ability to lock a user out, tried to log in too many times, etc.
  # timeoutable = ability to time out a user, will auto log in if they stay logged in too long
  # omniauthable = integrate third party log ins, allow users to sign in via facebook for example

  # PeterGate Roles
  # The :user role is added by default and shouldn't be included in this list.
  # The :root_admin can access any page regardless of access settings. Use with caution!
  # The multiple option can be set to true if you need users to have multiple roles.
  petergate(roles: [:admin, :editor], multiple: false)

  validates_presence_of :name

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
end
