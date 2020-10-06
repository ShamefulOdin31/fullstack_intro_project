Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :characters
  resources :about, only: [:index]
  resources :races, only: [:index, :show]
  root to: 'characters#index'
end
