Rails.application.routes.draw do
  # get 'events/index'
  # get 'events/show'
  # get 'events/new'
  # get 'events/edit'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "places#index"
  resources :places do
    resources :comments, only: [:new, :edit, :create, :update, :destroy]
    resources :events, only: [:new, :edit, :show, :index]
  end
end