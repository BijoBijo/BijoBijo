Rails.application.routes.draw do
  root 'articles#index'

  resources :articles, only: [:index, :show]

  namespace :admin do
    resources :articles
  end
end
