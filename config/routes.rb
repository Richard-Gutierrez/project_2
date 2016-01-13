Rails.application.routes.draw do
  resources :users
  root 'users#new'
  root 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'

end




