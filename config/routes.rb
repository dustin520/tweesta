Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'session_templates/index'

  get 'user_templates/index'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  # root 'users#index'

  resources :tags

  resources :users

  post '/search', to: 'sites#search'

  root 'sites#index'

  resources :sites, except: [:new, :edit]

  resources :site_templates
  resources :about_templates
  resources :contact_templates
  resources :user_templates
  resources :users

  match "*path", to: "sites#index", via: "get"

end


