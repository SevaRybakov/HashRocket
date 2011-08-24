HashRocket::Application.routes.draw do
  
  resources :profile
  
  devise_for :users
  root :to => 'profile#show'
  
  match '/edit' => 'profile#edit'
  
end
