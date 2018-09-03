require 'rails_helper'

describe 'as a user' do
  describe 'visiting the candidates index page' do
    before (:each) do
      @candidate1 = create(:candidate)
      @candidate2 = create(:candidate, name: "Scott Summers")
    end
    it 'should display all candidates on the page' do
      visit candidates_path

      expect(page).to have_content('All Candidates')
      expect(page).to have_content(@candidate1.name)
      expect(page).to have_content(@candidate2.name)
    end
  end
end
