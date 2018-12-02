Rails.application.routes.draw do
  devise_for :customers
  root 'users#index'
  resources :users, only: %i[show new edit create update destroy]
end
