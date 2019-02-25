require 'rails_helper'

RSpec.describe ServiceRequest, type: :model do
  context 'service request validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :service_request).to be_valid
    end
    
    it 'test for the presence of a hairstyle' do
      hair = FactoryBot.build :service_request, hairstyle: ""
      expect(hair).not_to be_valid
      expect(hair.errors[:hairstyle]).to include("can't be blank")
    end
  end
end
