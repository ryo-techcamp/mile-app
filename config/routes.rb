Rails.application.routes.draw do
  devise_for :users
  root to: "tasks#index"
  resources :tasks, only: [:index, :new, :create,:show,:destroy,:edit,:update] 
  resources :contacts, only: [:index]
end
