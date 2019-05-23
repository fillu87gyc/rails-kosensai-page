Rails.application.routes.draw do
  root  'static_pages#index'
  get 'static_pages/index'
  get 'static_pages/about'
  get 'static_pages/access'
  get 'static_pages/news'
  get 'static_pages/shop'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
