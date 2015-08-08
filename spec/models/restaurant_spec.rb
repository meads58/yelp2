require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'name validation' do
    it 'will save an entered name' do
      expect(FactoryGirl.build(:restaurant)).to be_valid
    end
     it 'will not save an if no name is entered' do
      expect(FactoryGirl.build(:invalid_restaurant)).not_to be_valid
    end
  end
end
