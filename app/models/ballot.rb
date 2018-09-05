class Ballot < ApplicationRecord
  validates_presence_of :office
  belongs_to :voter
  has_many :ballot_candidates
  has_many :candidates, through: :ballot_candidates
end
