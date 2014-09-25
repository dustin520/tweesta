Rails.application.routes.draw do

  # get '/login', to: 'session_templates#new'

  # get '/login', to: 'session#new'
  get '/logged_in_user', to: "session#logged_in_user"

  # delete '/logout', to: 'session#destroy' #not working

  post '/login', to: 'sessions#create'

  post 'session/destroy', to: 'sessions#destroy' # take out later

  post '/search', to: 'sites#search'

  root 'sites#index'

  resources :sites, except: [:new, :edit]

  resources :site_templates
  resources :session_templates
  resources :about_templates
  resources :contact_templates
  resources :user_templates
  resources :users do 
    resources :tags
  end

  get '/signup', to: 'users#new'

  match "*path", to: "sites#index", via: "get"

end


