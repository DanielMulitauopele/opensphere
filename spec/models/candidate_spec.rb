require 'rails_helper'

describe Candidate, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:office)}
  end
  describe 'relationships' do
    it {should belong_to(:voter)}
  end
end
