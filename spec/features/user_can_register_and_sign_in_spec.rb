require 'rails_helper'

describe 'as a user' do
  describe 'visiting the home page' do
    it 'should be able to register a new user' do
      username = "Daniel Muli"
      visit root_path

      click_on "Sign Up to Vote!"
      expect(current_path).to eq(new_voter_path)
      fill_in :voter_name, with: "Bill"
      fill_in :voter_age, with: 30
      fill_in :voter_ethnicity, with: "Samoan"
      fill_in :voter_registered_party, with: "Independent"
      fill_in :voter_username, with: username
      fill_in :voter_password, with: "test"

      click_on "Create Voter"
      expect(page).to have_content("Welcome, #{username}!")
    end
    it 'should say log out once we are signed in' do
      voter = create(:voter)
      visit root_path

      click_on "I Already Have an Account"

      expect(current_path).to eq(login_path)

      fill_in "username", with: voter.username
      fill_in "password", with: voter.password

      click_on "Log In"

      expect(current_path).to eq(voter_path(voter))
      expect(page).to have_content("Welcome, #{voter.username}")
      expect(page).to have_content("Log Out")
    end
  end
  describe 'logout' do
    it 'allows voters to log out' do
      voter = create(:voter, username: "greg", password: "greggreggreg")
      visit login_path

      fill_in :username, with: voter.username
      fill_in :password, with: voter.password

      click_on 'Log In'

      expect(page).to_not have_content('I Already Have an Account')
      click_on 'Log Out'
      expect(current_path).to eq(root_path)
      expect(page).to have_content('I Already Have an Account')
    end
  end
end
