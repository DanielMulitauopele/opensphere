class Ballot < ApplicationRecord
  belongs_to :voter
  has_many :ballot_candidates
  has_many :candidates, through: :ballot_candidates
end
