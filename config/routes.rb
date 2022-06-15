Rails.application.routes.draw do
  devise_for :users
  root to: "logs#index"
  resources :logs, only: [:new,:create,:show,:destroy,:edit,:update]
  resources :users, only: :show
end
