require 'rails_helper'

describe Candidate, type: :model do
  describe 'relationships' do
    it {should belong_to(:voter)}
  end
end
