require 'rails_helper'

RSpec.describe HairPersonality, type: :model do
 context 'test validity of class' do
  it 'test that a factory is created' do
    expect(FactoryBot.build :hair_personality).to be_valid
  end

  it 'test for the presence of a name' do
    hair = FactoryBot.build :hair_personality, name: ""
    expect(hair).not_to be_valid
    expect(hair.errors[:name]).to include("can't be blank")
  end

  it 'test for the presence of a description' do
    hair = FactoryBot.build :hair_personality, description: ""
    expect(hair).not_to be_valid
    expect(hair.errors[:description]).to include("can't be blank")
  end
 end
end
