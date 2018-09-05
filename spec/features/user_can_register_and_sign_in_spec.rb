require 'rails_helper'

describe 'as a user' do
  describe 'visiting the home page' do
    it 'should be able to register a new user' do
      username = "Daniel Muli"
      visit root_path

      click_on "Sign Up to Vote!"
      expect(current_path).to eq(new_voter_path)
      fill_in :voter_username, with: username
      fill_in :voter_password, with: "test"

      click_on "Create Voter"
      expect(page).to have_content("Welcome, #{username}!")
    end
  end
end
