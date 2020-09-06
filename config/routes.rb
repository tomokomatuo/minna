Rails.application.routes.draw do
  root to: 'oauth_test#new'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :oauth_tests
  post '/' => 'oauth_test#show'
  resources :blogs
  resources :profiles
  # post '/profiles/new' => 'profiles#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
