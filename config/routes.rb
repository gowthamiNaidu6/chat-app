Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :chat_rooms, only: [:new, :create, :show, :index, :update]
  root 'chat_rooms#index'
  mount ActionCable.server => '/cable'
end
