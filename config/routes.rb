Rails.application.routes.draw do

  get 'about_templates/index'

  # root 'users#index'

  resources :tags

  resources :users

  post '/search', to: 'sites#search'

  root 'sites#index'

  resources :sites, except: [:new, :edit]

  resources :site_templates

  # resources :abouts
  resources :about_templates

  match "*path", to: "sites#index", via: "get"

end


