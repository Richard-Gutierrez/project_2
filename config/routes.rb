Rails.application.routes.draw do

  resources :payments
  resources :users
<<<<<<< HEAD
  resources :cards
  resources :orders, :collection => {:confirm => :get}
  get 'welcome' => 'users#new'
  get '/billings' => 'billings#index'
  get '/billings/new' => 'billingss#new'
  post 'billings' => 'billings#create'

=======
  root 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
>>>>>>> cardViews

end




