Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"


  resources :posts, only: [:index, :new, :create, :destroy]
end
