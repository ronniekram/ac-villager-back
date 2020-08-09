Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :villagers, except: [:index, :update]
  resources :wishlists, only: [:create, :show, :destroy]
  resources :islands, only: [:create, :show]
end
