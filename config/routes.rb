Rails.application.routes.draw do 
  devise_for :users, controllers: {
    registrations: :registrations,
    omniauth_callbacks: :omniauth_callbacks,
    sessions: :sessions
  }
  root controller: :campaigns, action: :index
  resources :campaigns, only: [:index, :create, :new, :show, :update, :edit]
  resources :performers, only: [:new, :create, :show, :index, :update, :edit]
  resources :tickets, only: [:create]
  resources :orders, only: [:create]
  resources :payments, only: [:new, :create]
  resources :follow, only: [:create], method: :get
  post '/charges', controller: :purchases, action: :create
end
