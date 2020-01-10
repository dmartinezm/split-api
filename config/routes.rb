Rails.application.routes.draw do
  resources :groupshares
  resources :group_ins
  resources :friendships
  resources :expenses
  resources :groups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
