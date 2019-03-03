require 'rails_helper'
describe 'users routes' do

  context 'test for user routes' do
    it 'should route to user index' do
      expect(get 'api/v1/users').to
      route_to('users#index')
    end

    it 'should route to retrieve a specific user' do
      user = FactoryBot.create(:user)
      expect(response).to be_success
    end

    it 'expects thee user to be the same' do
      user = FactoryBot.create(:user)
      expect(json['username']).to eq(user.username)
    end  
  end
end