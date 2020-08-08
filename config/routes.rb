Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :villagers, except: [:update]
  resources :wishlists, only: [:create, :show, :update, :destroy]
  resources :islands, only: [:create, :show, :update]
end
