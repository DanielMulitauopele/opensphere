require 'rails_helper'

describe 'as a user' do
  describe 'visiting the activate page' do
    it 'should display the an activate button' do
      visit activate_index_path

      expect(page).to have_button('Activate')
    end
  end
end
