Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "toppages#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get "signup", to: "users#new"
  
  resources :openings, only: [:index, :show]
  resources :castlings, only: [:index, :show]
  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :game_records, only: [:show]

end
