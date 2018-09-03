require 'rails_helper'

describe 'as a user' do
  describe 'visiting the about page' do
    it 'should display the about header' do
      visit about_index_path

      within('h1') do
        expect(page).to have_content('About')
      end
    end
    it 'should display the about information' do
      visit about_index_path

      within('p') do
        expect(page).to have_content('Daniel Mulitauopele')
      end
    end
  end
end
