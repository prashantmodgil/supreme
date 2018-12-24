Rails.application.routes.draw do
  resources :dealers
  resources :complaints
  resources :mechenics
  resources :brands
  resources :products
  root 'complaints#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
