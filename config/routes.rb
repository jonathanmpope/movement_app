Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'user#new'
  post '/', to: 'user#create'
  get '/about', to: 'user#show'
  
  resources :mvmtone, only: [:new, :create, :edit, :update]

  resources :mvmttwo, only: [:new, :create, :edit, :update]

  resources :mvmtthree, only: [:new, :create, :edit, :update]

  resources :mvmtfour, only: [:new, :create, :edit, :update]

  resources :mvmtfive, only: [:new, :create, :edit, :update]
  
  resources :results, only: [:index]
end
