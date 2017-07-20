Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'
  resources :users, only: :create
  resources :photos, except: [:new, :edit, :delete] do
    resources :comments, except: [:edit]
    # resources :likes, except: :edit
  end
end
