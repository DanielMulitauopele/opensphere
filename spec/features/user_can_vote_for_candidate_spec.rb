require 'rails_helper'

describe 'as a user' do
  describe 'when visiting my ballot page' do
    before (:each) do
      @voter1 = Voter.create(name: "Bill", age: 25, ethnicity: "Irish", registered_party: "Democrat", username: "Bill123", password: "123bill", role: 0)
      @voter2 = Voter.create(name: "Bob", age: 26, ethnicity: "Samoan", registered_party: "Republican", username: "Bob123", password: "123bob", role: 0)
      @voter3 = Voter.create(name: "Dan Richards", age: 27, ethnicity: "Irish", registered_party: "Independent", username: "Dan123", password: "123dan", role: 0)

      @candidate1 = Candidate.create!(voter_id: @voter1.id)
      @candidate2 = Candidate.create!(voter_id: @voter3.id)

      @ballot1 = Ballot.create(id: 1, name: "Colorado State Senate Election", office: "Senator")

      @ballotcandidate1 = BallotCandidate.create!(id: 1, ballot_id: 1, candidate_id: @candidate1.id)
      @ballotcandidate2 = BallotCandidate.create!(id: 2, ballot_id: 1, candidate_id: @candidate2.id)
    end
    it 'should take user to their ballot tab' do
      visit ballots_path

      expect(page).to have_content("My Ballot")
      expect(page).to have_content("Select an Election")
      click_on "Colorado State Senate Election"

      expect(current_path).to eq(new_ballot_vote_path(@ballot1))
    end
    it "'should let use vote for a candidate'" do
      visit ballots_path

      expect(page).to have_content("My Ballot")
      expect(page).to have_content("Select an Election")

      click_on "#{@ballot1.name}"

      expect(current_path).to eq(new_ballot_vote_path(@ballot1))
      expect(page).to have_content('Choose Your Candidate')

      choose('Dan Richards')
      within('Dan Richards-tag') do
        click_on 'Vote'
      end

      expect(current_path).to eq(ballots_path)
    end
  end
end
