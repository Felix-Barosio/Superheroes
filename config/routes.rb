Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :heroes, only: [:index, :show, :update, :create, :destroy]
  resources :powers, only: [:index, :show, :update, :create, :destroy]
  resources :hero_powers, only: [:index, :show, :update, :create, :destroy]

end
