class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # confirmable = when user signs up for application, can't actually use until they confirm via email
  # locakable = ability to lock a user out, tried to log in too many times, etc.
  # timeoutable = ability to time out a user, will auto log in if they stay logged in too long
  # omniauthable = integrate third party log ins, allow users to sign in via facebook for example

  validates_presence_of :name

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
end
