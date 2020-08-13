Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :villagers

  resources :islands do 
    resources: villagers
  end 

    resources :wishlists do 
    resources: villagers
  end
end
