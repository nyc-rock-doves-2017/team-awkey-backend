Rails.application.routes.draw do
  root to: 'static#index'
  resources :users, only: :create
  resources :photos, except: [:new, :edit, :delete] do
    resources :comments, except: [:edit]
    # resources :likes, except: :edit
  end
end
