Rails.application.routes.draw do
  resources :pages
  devise_for :users
  root 'articles#index'

  get '/articles/stocks', to: 'articles#stocks'
  resources :articles do
    resources :stocks
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
