# frozen_string_literal: true

module Api
  module V1
    class DogsController < ApplicationController
      # GET /api/v1/dogs
      def index
        @api_v1_dogs = Dog.all.paginate(page: params[:page], per_page: 10)

        render json: @api_v1_dogs
      end
    end
  end
end
