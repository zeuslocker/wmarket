Rails.application.routes.draw do
  root 'home#index'
  get 'products', to: 'home#index'

  resources :categories, except: [:destroy, :index] do
    member do
      get 'products'
    end
  end

  resources :products, except: [:destroy, :index] do
    resources :orders
    member do
      get 'buy_form'
    end
  end

end
