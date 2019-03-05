Rails.application.routes.draw do
  
  
  root to: "home#home"
  
  
  resources :projects, only: [:new, :create, :show]

  get 'users/sign_in'
  post 'users/login'
  resources :users, only: [:new, :create, :show]

  get 'users/sign_out'
  post 'users/logout' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    

end
