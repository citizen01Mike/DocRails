namespace :import do
  desc "Import dog breeds from external API"
  task dog_breeds: :environment do
    DogApiService.fetch_and_save_breeds
    puts "Dog breeds imported successfully."
  end
end
