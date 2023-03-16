Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'user#new'
  post '/', to: 'user#create'

  get '/mvmtone', to: 'mvmtone#new'
  post '/mvmtone', to: 'mvmtone#create'
  get '/mvmtone/:id/edit', to: 'mvmtone#edit'
  patch '/mvmtone/:id', to: 'mvmtone#update'

  get '/mvmttwo', to: 'mvmttwo#new'
end
