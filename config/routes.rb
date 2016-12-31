Rails.application.routes.draw do
  resources :temperatures
  resources :rack_infos
  resources :package_in_outs
  resources :staff_infos
  resources :tickets
  resources :check_in_outs do
    member do
      get :check_in
      get :check_out
    end
  end
  resources :customer_staffs
  resources :customers
  root to: 'visitors#index'
  devise_for :users
  resources :users
end

