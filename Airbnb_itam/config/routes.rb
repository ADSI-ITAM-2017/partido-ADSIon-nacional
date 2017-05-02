Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :propiedades
  post 'welcome/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
