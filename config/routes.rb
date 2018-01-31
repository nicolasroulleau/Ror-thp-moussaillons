Rails.application.routes.draw do
  
  resources :corsairs



  get 'corsair/index', to:'corsairs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "static_pages#home"

end
