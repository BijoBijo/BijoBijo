Rails.application.routes.draw do
  root 'articles#index'

  resources :articles, only: [:index, :show]

  namespace :admin do
    resources :articles
    resources :images, only: [:create]
  end
end
