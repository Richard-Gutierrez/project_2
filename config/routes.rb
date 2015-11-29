Rails.application.routes.draw do

  resources :payments
  resources :users
  root 'users#new'
  resources :orders, :collection => {:confirm => :get}


end




