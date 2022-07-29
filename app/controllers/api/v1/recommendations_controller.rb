class Api::V1::RecommendationsController < ApplicationController
before_action :find_both_users, only: [:index, :create, :update, :destroy]
  def index
    # render json: RecommendationSerializer
  end




private

  def recommendation_params
    params.permit(:user_id, :recommended_by_id, :title, :media_id, :media_type, :status)
  end

  def find_both_users
      @recommended_to = User.find(params[:user_id])
      @recommended_by = User.find(params[:recommended_by_id])
  end



end

