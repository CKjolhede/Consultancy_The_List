require 'rails_helper'

RSpec.describe Recommendation, type: :request do
  before(:each) do
    create_list(:user, 10)
    create_list(:recommendation, 3)
    @recommended_by = User.all.first   #this keeps mocked users unique
    @recommended_to = User.all.last
  end
  
  it "sends a list of recommendations for a single user" do
    
    get '/api/v1/users/:user_id/recommendations'

    expect(response).to be_successful
  end
end