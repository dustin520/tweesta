Rails.application.routes.draw do

  get '/login', to: 'session#new'

  post '/login', to: 'session#create'

  post 'session/destroy', to: 'session#destroy' # take out later


  post '/search', to: 'sites#search'

  root 'sites#index'

  resources :sites, except: [:new, :edit]

  resources :site_templates
  resources :tags
  resources :about_templates
  resources :contact_templates
  resources :user_templates
  resources :users

  get '/signup', to: 'users#new'

  match "*path", to: "sites#index", via: "get"

end


