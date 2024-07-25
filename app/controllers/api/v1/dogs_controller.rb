module Api
  module V1
    class DogsController < ApplicationController
      # GET /api/v1/dogs/breeds
      def breeds
        @breeds = Breed.all
        render json: @breeds
      end

      # POST /api/v1/dogs/breeds/fetch
      # Optional: This endpoint triggers the fetch and save process
      def fetch_breeds
        DogApiService.fetch_and_save_breeds
        head :ok
      end
    end
  end
end
