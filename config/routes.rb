Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'articles#index'

  resources :articles, only: [:index, :show]
end
