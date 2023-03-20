Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'user#new'
  post '/', to: 'user#create'
  
  resources :mvmtone, only: [:new, :create, :edit, :update]

  # get '/mvmtone', to: 'mvmtone#new'
  # post '/mvmtone', to: 'mvmtone#create'
  # get '/mvmtone/:id/edit', to: 'mvmtone#edit'
  # patch '/mvmtone/:id', to: 'mvmtone#update'

  resources :mvmttwo, only: [:new, :create]

  # get '/mvmttwo', to: 'mvmttwo#new'
  # post '/mvmttwo', to: 'mvmttwo#create'

  resources :mvmtthree, only: [:new, :create]

  # get '/mvmtthree', to: 'mvmtthree#new'
  # post '/mvmtthree', to: 'mvmtthree#create'

  resources :mvmtfour, only: [:new, :create]

  # get '/mvmtfour', to: 'mvmtfour#new'
  # post '/mvmtfour', to: 'mvmtfour#create'

  resources :mvmtfive, only: [:new, :create]

  # get 'mvmtfive', to: 'mvmtfive#new'
  # post 'mvmtfive', to: 'mvmtfive#create'

  # get 'results', to: 'results#index'
  resources :results, only: [:index]
end
