require 'rails_helper'

describe 'as a user' do
  describe 'visiting the candidates index page' do
    before (:each) do
      @voter1 = create(:voter, id: 20)
      @voter2 = create(:voter, id: 21, name: "Jenny Jacobs", username: "JMoney")
      @candidate1 = create(:candidate, id: 1, voter_id: 20)
      @candidate2 = create(:candidate, id: 2, voter_id: 21)
    end
    it 'should display all candidates on the page' do
      visit candidates_path

      expect(page).to have_content('All Candidates')
      expect(page).to have_link(@candidate1.voter.name)
      expect(page).to have_link(@candidate2.voter.name)
    end
    it 'should display a vote button next to each candidate' do
      visit candidates_path

      within('.candidate-section-1') do
        expect(page).to have_link(@candidate1.voter.name)
        expect(page).to have_button('Vote')
      end
      within('.candidate-section-2') do
        expect(page).to have_link(@candidate2.voter.name)
        expect(page).to have_button('Vote')
      end
    end
    it 'should take user to show page after clicking on candidate' do
      visit candidates_path

      click_link(@candidate1.voter.name)

      expect(current_path).to eq(candidate_path(@candidate1))
      expect(page).to have_content(@candidate1.voter.name)
    end
  end
end
