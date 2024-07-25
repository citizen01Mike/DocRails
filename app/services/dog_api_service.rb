# class
class DogApiService
  API_URL = 'https://api.thedogapi.com/v1/breeds'.freeze
  
  def self.fetch_and_save_breeds
    response = Faraday.get(API_URL)
    if response.status == 200
      breeds = JSON.parse(response.body)
      breeds.each do |breed_data|
        Breed.find_or_create_by(name: breed_data['name'])
      end
    else
      Rails.logger.error "Failed to fetch breeds: #{response.status} #{response.body}"
    end
  end
end
