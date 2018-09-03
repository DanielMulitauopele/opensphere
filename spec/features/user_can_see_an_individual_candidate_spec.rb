require 'rails_helper'

describe 'as a user' do
  describe 'visiting the candidate show page' do
    before (:each) do
      @candidate1 = create(:candidate, id: 1)
      @candidate2 = create(:candidate, id: 2, name: "Hank McCoy")
    end
    it 'should display the candidates name' do
      visit candidate_path(@candidate2)

      expect(page).to have_content(@candidate2.name)
    end
    it 'should display the disclaimer before the vote button' do
      disclaimer = "#{@candidate2.name} is running for the position of 'Governor'. Do you want to vote for this candidate?"
      visit candidate_path(@candidate2)

      expect(page).to have_content(disclaimer)
      expect(page).to have_button('Vote')
    end
  end
end
