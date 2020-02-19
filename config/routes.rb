Rails.application.routes.draw do
  devise_for :employees
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
  get 'export_complaints' => 'complaints#export_complaints'
end
