Rails.application.routes.draw do
  get 'foundation_movies/index'
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "movies#index"

  resources :bootstrap_movies, only: [:index] do
    get "independent_context", on: :collection
    match "search", to: 'bootstrap_movies#search', via: [:get, :post], on: :collection
  end
  resources :semantic_movies, only: [:index]
  resources :materialize_movies, only: [:index]
  resources :ui_kit_movies, only: [:index]
  resources :tailwind_movies, only: [:index]

  resources :bulma_movies, only: [:index]
  resources :foundation_movies, only: [:index]
end
