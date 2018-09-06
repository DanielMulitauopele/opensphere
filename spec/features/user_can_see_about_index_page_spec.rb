require 'rails_helper'

describe 'as a user' do
  describe 'visiting the about page' do
    it 'should display the about header' do
      visit about_index_path

      within('h1') do
        expect(page).to have_content('About')
      end
    end
    it 'should display the information sections of OpenSphere' do
      what = "What is OpenSphere?"
      why = "Why is it important?"
      visit about_index_path

      within('.what-is-it') do
        expect(page).to have_content(what)
      end
      within('.why-important') do
        expect(page).to have_content(why)
      end
    end
  end
end
