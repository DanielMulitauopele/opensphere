require 'rails_helper'

describe 'as a user' do
  describe 'visiting the candidates index page' do
    before (:each) do
      @candidate1 = create(:candidate, id: 1)
      @candidate2 = create(:candidate, id: 2, name: "Scott Summers")
    end
    it 'should display all candidates on the page' do
      visit candidates_path

      expect(page).to have_content('All Candidates')
      expect(page).to have_content(@candidate1.name)
      expect(page).to have_content(@candidate2.name)
    end
    it 'should display a vote button next to each candidate' do
      visit candidates_path

      within('.candidate-section-1') do
        expect(page).to have_content(@candidate1.name)
        expect(page).to have_button('Vote')
      end
      within('.candidate-section-2') do
        expect(page).to have_content(@candidate2.name)
        expect(page).to have_button('Vote')
      end
    end
  end
end
