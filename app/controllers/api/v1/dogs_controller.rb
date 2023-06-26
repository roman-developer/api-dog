class Api::V1::DogsController < ApplicationController
  # before_action :set_api_v1_dog, only: %i[show update destroy]

  # GET /api/v1/dogs
  def index
    @api_v1_dogs = Dog.all

    render json: @api_v1_dogs
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_dog
    @api_v1_dog = Dog.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_dog_params
    params.fetch(:api_v1_dog, {})
  end
end
