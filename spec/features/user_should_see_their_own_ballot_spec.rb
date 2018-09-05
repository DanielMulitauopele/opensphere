require 'rails_helper'

describe 'as a user' do
  describe 'visiting candidates page' do
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
