Rails.application.routes.draw do
  devise_for :admins, skip: :registerable
  root 'home#index'
  get 'products', to: 'home#index'
  get 'contacts', to: 'home#contacts'
  get 'garanty', to: 'home#garanty'
  get 'public_contract', to: 'home#public_contract'
  get 'comments', to: 'home#comments'

  get 'admin_panel', to: 'admin#index'
  resources :categories, except: [:destroy, :index] do
    member do
      get 'products'
    end
  end

  resources :products, except: [:index] do
    resources :orders
    member do
      get 'buy_form'
    end
  end

end
