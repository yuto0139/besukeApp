Rails.application.routes.draw do
  devise_for :customers
  root 'home#authentication'
  #deviseを導入すると、feature specが通らなくなるので、一旦グレーアウト
  #root 'users#index'
  resources :users, only: %i[index show new edit create update destroy]
  get '/home/index', to: 'home#index'
  resources :blogs do
    resources :entries, except: :index do
      resources :comments, only: [:create, :destroy] do
        put 'approve', on: :member
      end
    end
  end
end
