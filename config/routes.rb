Rails.application.routes.draw do
  resources :groupshares
  resources :group_ins
  resources :friendships
  resources :expenses
  resources :groups
  resources :users
  # resources :auth
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#login'
  get '/persist', to: 'auth#persist'

  post '/newgroup', to: 'users#addGroup'
  post '/newfriend', to: 'users#addFriend'

end
