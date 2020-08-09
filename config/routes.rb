Rails.application.routes.draw do
  resources :posts
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'

  
  devise_for :users
  resources :users
  resources :comments

  root "users#index"

  # namespace :user do
  #     root :to => "users#show"
  # end

  # get '/user' => "users#index", :as => :user_root

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
