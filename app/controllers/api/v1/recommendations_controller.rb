class Api::V1::RecommendationsController < ApplicationController
before_action :find_user, only: [:index, :create, :update, :destroy]

def index 
      render json: RecommendationSerializer.new(@user.recommendations)
end

def create
  render json: Recommendation.create(recommendation_params)
end

def update
  render json: Recommendation.update(params[:id], recommendation_params)
end

private

  def recommendation_params
    params.permit(:user_id, :recommended_by_id, :title, :media_id, :media_type, :status)
  end

  def find_user
    @user = User.find(params[:user_id])
  end



end

