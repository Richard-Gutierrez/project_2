Rails.application.routes.draw do
  resources :users
  root 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'

end
