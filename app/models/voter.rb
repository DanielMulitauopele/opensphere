class Voter < ApplicationRecord
  validates_presence_of :name, :age, :ethnicity, :registered_party
end
