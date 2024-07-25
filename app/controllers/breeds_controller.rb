# class BreedsController < ApplicationController
#   def index
#     render json: Breed.all
#   end

#   def fetch_and_save
#     response = Faraday.get('https://api.thedogapi.com/v1/breeds')
#     breeds = JSON.parse(response.body)

#     breeds.each do |breed|
#       Breed.find_or_create_by(name: breed['name'])
#     end

#     head :ok
#   end
# end
