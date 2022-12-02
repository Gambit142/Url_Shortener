Rails.application.routes.draw do
  resources :long_urls, only: [:show] do
    resources :short_urls, only: [:create]
  end

  get '/:short_url', to: 'short_urls#show', as: :short_url

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "long_urls#show"
end
