Rails.application.routes.draw do

  # root 'users#index'


  post '/search', to: 'sites#search'

  root 'sites#index'

  resources :sites, except: [:new, :edit]

  resources :site_templates
  resources :tags
  resources :about_templates
  resources :contact_templates
  resources :user_templates
  resources :users

  match "*path", to: "sites#index", via: "get"

end


