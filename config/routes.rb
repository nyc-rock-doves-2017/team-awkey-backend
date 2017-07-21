Rails.application.routes.draw do
  root to: 'static#index'
  resources :sessions, only: :create
  resources :users, only: :create do
    resources :photos, only: :index
  end
  resources :photos, except: [:new, :edit, :delete] do
    resources :comments, except: [:edit]
    # resources :likes, except: :edit
  end
end
