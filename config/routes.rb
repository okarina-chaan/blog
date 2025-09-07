Rails.application.routes.draw do
  root "home#index"
  get "home/index"
  resources :posts, only: [:index, :show]
  resource :profile, only: [:show]
  resources :portfolios, only: [:index, :show]
  get "up" => "rails/health#show", as: :rails_health_check

end
