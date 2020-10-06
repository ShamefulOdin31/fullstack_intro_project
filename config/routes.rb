Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :characters, only: [:index, :show, :search, :search_results]
  resources :about, only: [:index]
  resources :races, only: [:index, :show]
  resources :classes, only: [:index, :show]

  root to: "characters#index"


  get "search" => "characters#search", :as => "search"

  post "search_results" => "characters#search_results", :as => "search_results"
end
