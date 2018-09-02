require 'rails_helper'

describe Voter, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}
    it {should validate_presence_of(:ethnicity)}
    it {should validate_presence_of(:registered_party)}
  end
end
