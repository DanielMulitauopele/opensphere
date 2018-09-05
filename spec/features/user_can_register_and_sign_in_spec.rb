require 'rails_helper'

describe 'as a user' do
  describe 'visiting the home page' do
    it 'should be able to register a new user' do
      username = "Daniel Muli"
      name = "Bill"
      visit root_path

      click_on "Sign Up to Vote!"
      expect(current_path).to eq(new_voter_path)
      fill_in :voter_name, with: name
      fill_in :voter_age, with: 30
      fill_in :voter_ethnicity, with: "Samoan"
      fill_in :voter_registered_party, with: "Independent"
      fill_in :voter_username, with: username
      fill_in :voter_password, with: "test"

      click_on "Create Voter"
      expect(page).to have_content("Welcome, #{username}!")
    end
  end
end
