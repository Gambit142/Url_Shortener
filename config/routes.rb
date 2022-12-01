Rails.application.routes.draw do
  resources :long_urls, only: [:new, :create, :show] do
    resources :short_urls, only: [:new, :create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
