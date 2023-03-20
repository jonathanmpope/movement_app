Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'user#new'
  post '/', to: 'user#create'
  
  resources :mvmtone, only: [:new, :create, :edit, :update]

  resources :mvmttwo, only: [:new, :create]

  resources :mvmtthree, only: [:new, :create]

  resources :mvmtfour, only: [:new, :create]

  resources :mvmtfive, only: [:new, :create]
  
  resources :results, only: [:index]
end
