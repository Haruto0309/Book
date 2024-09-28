Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  devise_for :users
  root to: "homes#top"
end
