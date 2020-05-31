Rails.application.routes.draw do
  devise_for :users
  root "places#index"
  resources :places do
    resources :comments, only: [:new, :edit, :create, :update, :destroy]
  end
end