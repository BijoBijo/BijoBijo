Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'articles#index'
end
