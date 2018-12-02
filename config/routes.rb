Rails.application.routes.draw do
  devise_for :customers
  root 'home#authentication'
  resources :users, only: %i[index show new edit create update destroy]
end
