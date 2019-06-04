Rails.application.routes.draw do
  get 'orders/index'

  get 'orders/create'

  resources :menus do
    resources :foods do
      resources :orders, only: :create
    end
  end

  resources :orders, only: :index

  resources :tables, only: :index

  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  root to: "tables#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
