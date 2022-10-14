Rails.application.routes.draw do
  devise_for :users
  resources :users do
  collection do
     post :sign_up
     post :login
     post :logout
     get :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
resources :doctors
resources :medicines
end
