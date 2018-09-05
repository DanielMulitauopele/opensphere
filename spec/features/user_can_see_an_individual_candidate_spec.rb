require 'rails_helper'

describe 'as a user' do
  describe 'visiting the candidate show page' do
    before (:each) do
      @voter1 = create(:voter, id: 20)
      @voter2 = create(:voter, id: 21, name: "Jenny Jacobs", username: "JMoney")
      @candidate1 = create(:candidate, id: 1, voter_id: 20)
      @candidate2 = create(:candidate, id: 2, voter_id: 21)
    end
    it 'should display the candidates name' do
      visit candidate_path(@candidate2)

      expect(page).to have_content(@candidate2.voter.name)
    end
    it 'should display the disclaimer before the vote button' do
      disclaimer = "#{@candidate2.voter.name} is running for a position in Government. Do you want to vote for this candidate?"
      visit candidate_path(@candidate2)

      expect(page).to have_content(disclaimer)
      expect(page).to have_button('Vote')
    end
  end
end
