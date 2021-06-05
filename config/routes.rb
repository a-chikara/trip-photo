Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"

  resources :users, only: [:edit, :update]
  resources :posts, only: [:index, :new, :create, :destroy] do
    collection do
      get "search"
    end
  end
end
