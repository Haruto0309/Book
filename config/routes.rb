Rails.application.routes.draw do
  root to: "home#top"
  get "home/about", as:"about"
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index]
end
