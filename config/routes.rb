Rails.application.routes.draw do

  # root 'users#index'

  resources :tags

  resources :users

  post '/search', to: 'sites#search'

  root 'sites#index'

  resources :sites, except: [:new, :edit]

  resources :site_templates
  resources :about_templates
  resources :contact_templates

  match "*path", to: "sites#index", via: "get"

end


