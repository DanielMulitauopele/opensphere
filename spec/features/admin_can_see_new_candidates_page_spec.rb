require "rails_helper"

describe "Voter visits candidates new page" do
  describe "as admin" do
    it "allows admin to see new candidates page" do
	   admin = create(:voter,
       username: "penelope",
       password: "boom",
       role: 1
     )

      allow_any_instance_of(ApplicationController).to receive(:current_voter).and_return(admin)

      visit new_admin_candidate_path
      expect(page).to have_content("Add New Candidate")
    end
    xit "allows admin to see new candidates tab" do
	   admin = create(:voter,
       username: "penelope",
       password: "boom",
       role: 1
     )

      allow_any_instance_of(ApplicationController).to receive(:current_voter).and_return(admin)

      dashboard_index_path
      within('.admin') do
        expect(page).to have_link("Add New Candidate")
      end
    end
  end
  describe "as default voter" do
    it 'does not allow default voter to see admin candidates new page' do
      voter = create(
        :voter,
        username: "fern@gully.com",
        password: "password",
        role: 0)

      allow_any_instance_of(ApplicationController).to receive(:current_voter).and_return(voter)

      visit new_admin_candidate_path

      expect(page).to_not have_content("Add New Candidate")
      expect(page).to have_content("These are not the droids you're looking for.")
    end
  end
end
