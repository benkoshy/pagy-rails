Rails.application.routes.draw do
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "movies#index"

  resources :bootstrap_movies, only: [:index]
  resources :semantic_movies, only: [:index]
  resources :materialize_movies, only: [:index]
  resources :ui_kit_movies, only: [:index]
  resources :tailwind_movies, only: [:index]
end
