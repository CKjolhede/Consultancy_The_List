require 'rails_helper'

RSpec.describe Recommendation, type: :request do
  
  it "sends a list of recommendations for a single user" do
    create_list(:user, 10)
    create_list(:recommendation, 5)

    get '/api/v1/recommendations'

    expect(response).to be_successful
  end
end