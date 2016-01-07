Rails.application.routes.draw do

  resources :payments
  resources :users
  resources :cards
  root 'users#new'
  resources :orders, :collection => {:confirm => :get}


end




