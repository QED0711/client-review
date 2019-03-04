Rails.application.routes.draw do
  
  
  
  
  resources :users, only: [:new, :create]
  get 'users/sign_in'
  post 'users/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    

end
