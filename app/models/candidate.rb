class Candidate < ApplicationRecord
  validates_presence_of :office
  belongs_to :voter
  has_many :ballot_candidates
  has_many :ballots, through: :ballot_candidates
end
