Rails.application.routes.draw do
  root to: "fruits#index"

  get '/sign_in' => 'devise/sessions#new'
  
  devise_for :users, :controllers => { registrations: 'registrations' }, :path_prefix => 'd'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :fruits
  resources :appointments

   
end
