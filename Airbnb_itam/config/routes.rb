Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  post 'welcome/create'
  resources :propiedades
  resources :inquilino


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
