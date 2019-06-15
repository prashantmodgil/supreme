Rails.application.routes.draw do
  resources :analytics
  resources :employees
  resources :dealers
  resources :complaints
  resources :mechenics
  resources :brands
  resources :products
  root 'complaints#index'
  post 'update_complaint' => 'complaints#update_complaint'
  get 'update_complaints' => 'complaints#update_complaints'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
