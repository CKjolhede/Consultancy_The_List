class Api::V1::UsersController < ApplicationController
  def index
    render json: UserSerializer.new(User.all)
  end

  def show
    render json: UserSerializer.new(User.find(params[:id]))
  end

  def create
    render json: UserSerializer.new(User.find_or_create_by(user_params)), status: :created
  end

  private

    def user_params
      params.require(:user).permit(:email, :name)
    end
end
