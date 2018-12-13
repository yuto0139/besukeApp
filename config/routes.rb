Rails.application.routes.draw do
  devise_for :customers
  root 'home#authentication'
  resources :users, only: %i[index show new edit create update destroy]
  get '/home/index', to: 'home#index'
  resources :blogs do
    resources :entries, except: :index do
      resources :comments, except: :index
    end
  end
end
