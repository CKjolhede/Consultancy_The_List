require 'rails_helper'

RSpec.describe Recommendation, type: :request do
  before(:each) do
    create_list(:user, 10)
    @recommended_by = User.all.first   #this keeps mocked users unique
    @recommended_to = User.all.last
    create_list(:recommendation, 2, recommended_by_id: @recommended_by.id, user_id: @recommended_to.id)
    create(:recommendation, recommended_by_id: @recommended_by.id, user_id: (@recommended_to.id - 1))#this recommendation is for sad path testing
  end
  context '#Index' do
    it "sends a list of recommendations for a single user" do
      
      get "/api/v1/users/#{@recommended_to.id}/recommendations"

      expect(response).to be_successful

      recommendations = JSON.parse(response.body, symbolize_names: true)
      expect(recommendations[:data]).to be_an Array
      expect(recommendations[:data].count).to eq(2)
      recommendations[:data].each do |rec|
        expect(rec[:attributes]).to have_key(:user_id)
        expect(rec[:attributes][:user_id]).to be_an Integer
        expect(rec[:attributes]).to have_key :title
        expect(rec[:attributes][:title]).to be_a String
        expect(rec[:attributes]).to have_key(:media_id)
        expect(rec[:attributes][:media_id]).to be_an Integer
        expect(rec[:attributes]).to have_key(:status)
        expect(rec[:attributes][:status]).to be_a String
        expect(rec[:attributes]).to have_key(:recommended_by_id)
        expect(rec[:attributes][:recommended_by_id]).to be_an Integer
        expect(rec[:attributes]).to have_key(:media_type)
        expect(rec[:attributes][:media_type]).to be_an String
      end
    end
  end

  context '#Create' do
    it 'creates a new recommendation object' do
      user = User.all.last
      recommendation_params = ({
                                media_id: 2221,
                                title: "La La Land",
                                media_type: "movie",
                                recommended_by_id: 18,
                                status: "pending",
                                user_id: user.id
                              })
      # headers = {"CONTENT_TYPE" => "application/json"}

      post "/api/v1/users/#{user.id}/recommendations", params: recommendation_params
      expect(response).to be_successful
      
      new_rec = Recommendation.last
      expect(new_rec.media_id).to eq(2221)
      expect(new_rec.title).to eq("La La Land")
      expect(new_rec.media_type).to eq("movie")
      expect(new_rec.status).to eq("pending")
      expect(new_rec.user_id).to eq(user.id)
    end
  end
end