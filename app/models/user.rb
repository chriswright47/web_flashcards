class User < ActiveRecord::Base

  has_secure_password

  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :username, uniqueness: true, presence: true
  has_many :rounds
  has_many :guesses, through: :rounds
end
