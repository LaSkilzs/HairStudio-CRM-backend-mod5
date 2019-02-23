require 'rails_helper'

RSpec.describe Salon, type: :model do
 context 'validates salon' do

  it 'tests that a valid factory is created' do
    expect(FactoryBot.build :salon).to be_valid
  end

  it 'test for the presence of a name' do
    salon = FactoryBot.build :salon, name: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:name]).to include("can't be blank")
  end

  it 'test for the presence of a street_1' do
    salon = FactoryBot.build :salon, street_1: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:street_1]).to include("can't be blank")
  end

  it 'test for the presence of a city' do
    salon = FactoryBot.build :salon, city: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:city]).to include("can't be blank")
  end

  it 'test for the presence of a state' do
    salon = FactoryBot.build :salon, state: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:state]).to include("can't be blank")
  end

  it 'test for the presence of a phone' do
    salon = FactoryBot.build :salon,phone: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:phone]).to include("can't be blank")
  end

  it 'test for the presence of an email' do
    salon = FactoryBot.build :salon, email: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:email]).to include("can't be blank")
  end

  it 'test for the presence of a web address' do
    salon = FactoryBot.build :salon, web: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:web]).to include("can't be blank")
  end

  it 'test for the presence of a business_certification' do
    salon = FactoryBot.build :salon, business_certification: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:business_certification]).to include("can't be blank")
  end

  it 'test for the presence of a tax id' do
    salon = FactoryBot.build :salon, tax_id: " "
    expect(salon).not_to be_valid
    expect(salon.errors[:tax_id]).to include("can't be blank")
  end

  it 'test for the uniqueness of an email address' do
     salon = FactoryBot.build :salon
     salon2 = salon.dup
     expect(salon2).not_to be_valid 
  end

  it 'test correct format of email address' do
    salon = FactoryBot.build :salon, email: "l..lycom"
    expect(salon).not_to  be_valid
    expect(salon.errors[:email]).to include("The format of Email is Invalid")
  end

 end
end
