require 'rails_helper'

describe Voter, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}
    it {should validate_presence_of(:ethnicity)}
    it {should validate_presence_of(:registered_party)}
    it {should validate_presence_of(:password)}
    it {should validate_presence_of(:username)}
  end
  describe 'relationships' do
    it {should have_many(:votes)}
  end
  describe 'roles' do
    it "can be created as an admin" do
      voter = create(
        :voter,
        username: "penelope",
        password: "boom",
        role: 1
      )

      expect(voter.role).to eq("admin")
      expect(voter.admin?).to be_truthy
    end
    it "can be created as a default user" do
      voter = create(
        :voter,
        username: "sammy",
        password: "pass",
        role: 0
      )

      expect(voter.role).to eq("default")
      expect(voter.default?).to be_truthy
    end
  end
end
