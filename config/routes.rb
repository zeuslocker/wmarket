Rails.application.routes.draw do
  root 'home#index'
  resources :products, except: [:destroy, :index]
  get 'products', to: 'home#index'
end
