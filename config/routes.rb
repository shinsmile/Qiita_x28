Rails.application.routes.draw do
  resources :pages
  devise_for :users
  root 'articles#index'

  get '/application/search', to: 'application#search'
  get '/articles/search', to: 'articles#search'
  get '/articles/stocks', to: 'articles#stocks'
  get '/articles/stocks_search', to: 'articles#stocks_search'
  resources :articles do
    resources :stocks, only: [:create, :update, :destroy]
    resources :likes, only: [:create, :destroy]
  end
  resources :users do
    get '/like', to: 'users#like'
    get '/private', to: 'users#private'
    get '/commentpage', to: 'users#commentpage'
  end
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
