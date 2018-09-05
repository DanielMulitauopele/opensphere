require 'rails_helper'

describe Ballot, type: :model do
  describe 'validations' do
    it {should validate_presence_of :office}
  end
  describe 'relationships' do
    it {should belong_to(:voter)}
    it {should have_many(:ballot_candidates)}
  end
end
