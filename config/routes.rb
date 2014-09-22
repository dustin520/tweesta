Rails.application.routes.draw do

  root 'users#index'

  resources :tags

  resources :users


end


#      root GET    /                         users#index
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
