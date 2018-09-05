require 'rails_helper'

describe BallotCandidate, type: :model do
  describe 'relationships' do
    it {should belong_to(:ballot)}
    it {should belong_to(:candidate)}
  end
end
