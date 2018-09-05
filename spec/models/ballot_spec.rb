require 'rails_helper'

describe Ballot, type: :model do
  describe 'relationships' do
    it {should belong_to(:voter)}
    it {should have_many(:ballot_candidates)}
  end
end
