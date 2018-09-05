require 'rails_helper'

describe 'as a user' do
  describe 'visiting candidates page' do
    before (:each) do
      @voter1 = create(:voter, id: 20)
      @voter2 = create(:voter, id: 21, name: "Jenny Jacobs", username: "JMoney")
      @candidate1 = create(:candidate, id: 1, voter_id: 20)
      @candidate2 = create(:candidate, id: 2, voter_id: 21)
    end
    it 'should display a a picture next to each candidate' do
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
  end
end
