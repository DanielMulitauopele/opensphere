require 'rails_helper'

describe 'as a user' do
  describe 'when visiting the home page' do
    it 'should display the welcome message' do
      welcome = "Welcome to OpenSphere"
      visit dashboard_index_path

      expect(page).to have_content(welcome)
    end
    it 'should display a navbar menu' do
      visit dashboard_index_path

      within('.navbar') do
        expect(page).to have_link('Candidates')
        expect(page).to have_link('Activate Profile')
      end
    end
    
  end
end
