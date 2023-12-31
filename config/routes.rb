Rails.application.routes.draw do
  root to: 'static_pages#home'
  
  namespace :host do
    resources :listings #routes to listings 
  end

  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks',
    #confirmations: 'users/confirmations'
  }

  #default_url_options Rails.application.config.action_mailer.default_url_options

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end