Rails.application.routes.draw do

  devise_for :users
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]


  root to: 'homes#top'
  get "/home/about" =>"homes#about",as: '/home/about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
