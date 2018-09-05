require "rails_helper"

describe "Voter visits candidates new page" do
  context "as admin" do
    it "allows admin to create new candidates" do
	   admin = create(:voter,
       username: "penelope",
       password: "boom",
       role: 1
     )

      allow_any_instance_of(ApplicationController).to receive(:current_voter).and_return(admin)

      visit new_admin_candidate_path
      expect(page).to have_content("Add New Candidate")
    end
  end
end
