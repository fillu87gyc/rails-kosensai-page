Rails.application.routes.draw do
  root  'static_pages#index'
  get 'index' => 'static_pages#index'
  get 'about' => 'static_pages#about'
  get 'access' => 'static_pages#access'
  get 'news' => 'static_pages#news'
  get 'shop'  => 'static_pages#shop'
  get 'download/:id', to: 'static_pages#download'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
