require 'rails_helper'

RSpec.describe Salon, type: :model do
 context 'validates salon' do

  it 'tests that a valid factory is created' do
    salon = FactoryBot.build :salon
    expect(salon).to be_valid
  end
 end
end
