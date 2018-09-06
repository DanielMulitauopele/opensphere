class Ballot < ApplicationRecord
  validates_presence_of :office
  has_many :ballot_candidates
  has_many :candidates, through: :ballot_candidates
end
