class Guess < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :round
  has_one :user, through: :round
end
