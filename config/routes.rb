Rails.application.routes.draw do
  resources :teams do
    member do
      post 'join'
      delete 'leave'
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
