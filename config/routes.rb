Rails.application.routes.draw do
  devise_for :users
  root "places#index"
  resources :places, only: :show  do
    resources :comments, only: [:new, :edit, :create, :update, :destroy]
  end
end