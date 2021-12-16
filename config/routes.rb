Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'manager/index'
  patch 'users/:id', to: 'users#update', as: 'users'

  resources :stories
  root 'stories#index'

  get 'picstories', to: "stories#picstories", as: 'picstories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
