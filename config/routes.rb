Rails.application.routes.draw do
  devise_for :users
  resources :long_urls, only: [:index]
  resources :short_urls, only: [:create, :show]

  get '/shortened/:short_url', to: 'short_urls#redirect_url', as: 'redirect_url'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "long_urls#show"
  root "home#index"
end
