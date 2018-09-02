require 'rails_helper'

describe 'as a user' do
  describe 'visiting the candidates index page' do
    it 'should display all candidates on the page' do
      visit candidates_path


    end
  end
end
