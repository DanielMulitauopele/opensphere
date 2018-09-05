class Candidate < ApplicationRecord
  validates_presence_of :office
  belongs_to :voter
end
