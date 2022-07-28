class Api::V1::RecommendationsController < ApplicationsController

  def index
    render json: RecommendationSerializer

  end
end