Rails.application.routes.draw do

  # root 'users#index'

  resources :tags

  resources :users

  get '/search', to: 'users#show'


  resources :sites, except: [:new, :edit]

  match "*path", to: "sites#index", via: "get"

  root 'sites#index'

end


#    Prefix Verb   URI Pattern               Controller#Action
#      tags GET    /tags(.:format)           tags#index
#           POST   /tags(.:format)           tags#create
#   new_tag GET    /tags/new(.:format)       tags#new
#  edit_tag GET    /tags/:id/edit(.:format)  tags#edit
#       tag GET    /tags/:id(.:format)       tags#show
#           PATCH  /tags/:id(.:format)       tags#update
#           PUT    /tags/:id(.:format)       tags#update
#           DELETE /tags/:id(.:format)       tags#destroy
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#    search GET    /search(.:format)         users#show
#     sites GET    /sites(.:format)          sites#index
#           POST   /sites(.:format)          sites#create
#      site GET    /sites/:id(.:format)      sites#show
#           PATCH  /sites/:id(.:format)      sites#update
#           PUT    /sites/:id(.:format)      sites#update
#           DELETE /sites/:id(.:format)      sites#destroy
#           GET    /*path(.:format)          sites#index
#      root GET    /                         sites#index