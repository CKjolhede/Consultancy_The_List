require 'rails_helper'

describe "Users API endpoint" do
  it "sends a list of Users" do
     create_list(:user, 3)

      get '/api/v1/users'

      expect(response).to be_successful

      users = JSON.parse(response.body, symbolize_names: true)

      expect(users.count).to eq(3)

    users.each do |user|
      expect(user).to have_key(:id)
      expect(user[:id]).to be_an(Integer)

      expect(user).to have_key(:name)
      expect(user[:name]).to be_a(String)

      expect(user).to have_key(:email)
      expect(user[:email]).to be_a(String)
    end
   end
end
