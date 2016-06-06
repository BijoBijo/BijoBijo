Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'ladies#index'
end
