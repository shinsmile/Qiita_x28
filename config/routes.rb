Rails.application.routes.draw do
  resources :pages
  devise_for :users
  root 'articles#index'

  resources :articles do
    resources :likes, only:[:create, :destroy]
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
