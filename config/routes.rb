Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  
  root to: "logs#index"
  resources :logs, only: [:new,:create,:show,:destroy,:edit,:update] do
    resources :comments, only: :create
  end
  resources :users, only: [:show,:edit,:destroy]
end
