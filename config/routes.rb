Rails.application.routes.draw do
  resources :comments
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :sites
  root 'sites#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
