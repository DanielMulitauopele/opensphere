require 'rails_helper'

describe 'as a user' do
  describe 'visiting the candidates index page' do
    before (:each) do
      @voter1 = Voter.create(id: 20, name: "David Blaine", age: 70, ethnicity: "Samoan", registered_party: "Independent", username: "DeanMartin", password: "iheartchicken")
      @voter2 = Voter.create(id: 21, name: "Jenny Jacobs", age: 45, ethnicity: "Irish", registered_party: "Democrat", username: "JMoney", password: "snkdcsd")
      @candidate1 = Candidate.create(id: 1, voter_id: 20)
      @candidate2 = Candidate.create(id: 2, voter_id: 21)

      @ballot1 = Ballot.create(id: 1, name: "Colorado State Senate Election", office: "Senator")
      @ballotcandidate1 = BallotCandidate.create(ballot_id: 1, candidate_id: 1)
      @ballotcandidate2 = BallotCandidate.create(ballot_id: 1, candidate_id: 2)
    end
    it 'should display all candidates on the page' do
      visit candidates_path

      expect(page).to have_content('All Candidates')
      expect(page).to have_link(@candidate1.voter.name)
      expect(page).to have_link(@candidate2.voter.name)
    end

    it 'should take user to show page after clicking on candidate' do
      visit candidates_path

      click_link(@candidate1.voter.name)

      expect(current_path).to eq(candidate_path(@candidate1))
      expect(page).to have_content(@candidate1.voter.name)
    end
  end
end
