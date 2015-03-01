Rails.application.routes.draw do
  root 'static_pages#index'
  get 'sign-up', to: 'registration#new'
  post 'sign-up', to: 'registration#create'
  get 'sign-in', to: 'authentication#new'
  post 'sign-in', to: 'authentication#create'
  get 'sign-out', to: 'authentication#destroy'
  
end
