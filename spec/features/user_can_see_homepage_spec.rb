require 'rails_helper'

describe 'as a user' do
  describe 'when visiting the home page' do
    it 'should display the welcome message' do
      welcome = "Paper is for suckers."
      visit dashboard_index_path

      expect(page).to have_content(welcome)
    end
    it 'should display a navbar menu' do
      visit dashboard_index_path

      within('.navbar') do
        expect(page).to have_link('Candidates')
        expect(page).to have_link('About')
        expect(page).to have_link('Sign Up to Vote!')
        expect(page).to have_link('I Already Have an Account')
      end
    end
    it 'should display the about information' do
      welcome = 'Welcome to OpenSphere'
      visit dashboard_index_path

      within('h2') do
        expect(page).to have_content(welcome)
      end
    end
  end
end
