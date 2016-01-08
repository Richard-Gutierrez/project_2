Rails.application.routes.draw do

  resources :payments
  resources :users
  resources :cards
  resources :orders, :collection => {:confirm => :get}
  get 'welcome' => 'users#new'

end




