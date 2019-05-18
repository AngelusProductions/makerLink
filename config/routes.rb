Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :makers

  namespace :api do
    namespace :v1 do
      resources :makers
    end
  end
end
