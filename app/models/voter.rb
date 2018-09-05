class Voter < ApplicationRecord
  validates_presence_of :name, :age, :ethnicity, :registered_party
  validates :username, uniqueness: true, presence: true
  validates_presence_of :password, require: true
  has_many :votes

  has_secure_password

  enum role: [:default, :admin]
end
