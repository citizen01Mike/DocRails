Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'dogs/breeds', to: 'dogs#breeds'
      post 'dogs/breeds/fetch', to: 'dogs#fetch_breeds' # Optional, for manual fetching
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  # root 'dogs#home'

  # resources :breeds, only: [:index]
  # post 'breeds/fetch_and_save', to: 'breeds#fetch_and_save'

  # Defines the root path route ("/")
end
