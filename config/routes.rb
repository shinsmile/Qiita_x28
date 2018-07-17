Rails.application.routes.draw do
  resources :pages
  devise_for :users
  root 'trend#show'

  get 'trend' => 'trend#show'
  get 'timeline' => 'timeline#show'
  get 'tag_feed' => 'tag_feed#show'
  get '/application/search', to: 'application#search'
  get '/articles/search', to: 'articles#search'
  get '/articles/stocks', to: 'articles#stocks'
  get '/articles/stocks_search', to: 'articles#stocks_search'
  resources :articles do
    resources :stocks
    resources :likes, only:[:create, :destroy]
  end
  resources :users
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
