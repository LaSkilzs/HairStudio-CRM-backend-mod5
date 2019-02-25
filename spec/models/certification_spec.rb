require 'rails_helper'

RSpec.describe Certification, type: :model do
 context ' certification validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :certification).to be_valid
    end
    
    it 'test for the presence of a name' do
      cert = FactoryBot.build :certification, name: ""
      expect(cert).not_to be_valid
      expect(cert.errors[:name]).to include("can't be blank")
    end
    it 'test for the presence of a organization' do
      cert= FactoryBot.build :certification, organization: ""
      expect(cert).not_to be_valid
      expect(cert.errors[:organization]).to include("can't be blank")
    end
  end
end
