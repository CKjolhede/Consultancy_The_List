require 'rails_helper'

describe "Users API endpoint" do
  it "sends a list of Users" do
     create_list(:user, 3)

      get '/api/v1/users'

      expect(response).to be_successful

      parsed_json = JSON.parse(response.body, symbolize_names: true)

      users = parsed_json[:data]

      expect(users.count).to eq(3)

    users.each do |user|
      expect(user).to have_key(:id)
      expect(user).to have_key(:attributes)
      expect(user[:id]).to be_an(String)

      expect(user[:attributes]).to have_key(:name)
      expect(user[:attributes][:name]).to be_a(String)

      expect(user[:attributes]).to have_key(:email)
      expect(user[:attributes][:email]).to be_a(String)

      expect(user[:attributes]).to have_key(:id)
      expect(user[:attributes][:id]).to be_a(Integer)
    end
  end

  it 'sends a user with specific ID' do
    user1 = create(:user, name: "Tom Cruise")
    user2 = create(:user, name: "Denzel Washington")
    user3 = create(:user, name: "Anthony Hopkins")

    get "/api/v1/users/#{User.first.id}"

    response_body = JSON.parse(response.body, symbolize_names: true)

    user = response_body[:data]

    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(user).to have_key(:id)
    expect(user).to have_key(:attributes)
    expect(user[:attributes][:name]).to be_a(String)
    expect(user[:attributes][:email]).to be_a(String)
  end

  it 'sends an item to be created' do
    user_params = ({
                name: 'Anthony Hopkins',
                email: 'AH@awesomeactors.com'
              })
      headers = {"CONTENT_TYPE" => "application/json"}

      post "/api/v1/users", headers: headers, params: JSON.generate(user: user_params)

      created_user = User.last

      expect(response).to be_successful
      expect(response.status).to eq(201)

      expect(created_user.name).to eq(user_params[:name])
      expect(created_user.email).to eq(user_params[:email])
  end
end
