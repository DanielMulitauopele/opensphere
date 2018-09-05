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
        expect(page).to have_link('Activate Profile')
        expect(page).to have_link('About')
      end
    end
    it 'should display the information sections of OpenSphere' do
      what = "What is OpenSphere?"
      why = "Why is it important?"
      visit dashboard_index_path

      within('.what-is-it') do
        expect(page).to have_content(what)
      end
      within('.why-important') do
        expect(page).to have_content(why)
      end
    end
  end
end
