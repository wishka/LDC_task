Rails.application.routes.draw do
  get 'orders/show'
  get 'password_resets/new'
  get 'password_resets/edit'
  root             'static_page#welcome'
  get '/'               => 'static_page#welcome'
  get 'welcome'         => 'products#show'
  get 'monday'          => 'products#monday'
  get 'tuesday'         => 'products#tuesday'
  get 'wednesday'       => 'products#wednesday'
  get 'thursday'        => 'products#thursday'
  get 'friday'          => 'products#friday'
  get 'saturday'        => 'products#saturday'
  get 'sunday'          => 'products#sunday'
  get 'help'            => 'static_page#help'
  get 'about'           => 'static_page#about'
  get 'contact'         => 'static_page#contact'
  get 'orders'          => 'orders#show'
  get 'signup'          => 'users#new'
  get    'login'        => 'sessions#new'
  post   'login'        => 'sessions#create'
  delete 'logout'       => 'sessions#destroy'
  post 'cart'           => 'cart#index'
  post 'place_order'    => 'cart#order_placed'
  get 'products/show'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :categories
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
