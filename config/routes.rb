# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#            root GET    /                               posts#index
#           posts GET    /posts(.:format)                posts#index
#                 POST   /posts(.:format)                posts#create
#        new_post GET    /posts/new(.:format)            posts#new
#       edit_post GET    /posts/:url_path/edit(.:format) posts#edit
#            post GET    /posts/:url_path(.:format)      posts#show
#                 PATCH  /posts/:url_path(.:format)      posts#update
#                 PUT    /posts/:url_path(.:format)      posts#update
#                 DELETE /posts/:url_path(.:format)      posts#destroy
#  new_admin_home GET    /admin/home/new(.:format)       admin/homes#new
# edit_admin_home GET    /admin/home/edit(.:format)      admin/homes#edit
#      admin_home GET    /admin/home(.:format)           admin/homes#show
#                 PATCH  /admin/home(.:format)           admin/homes#update
#                 PUT    /admin/home(.:format)           admin/homes#update
#                 DELETE /admin/home(.:format)           admin/homes#destroy
#                 POST   /admin/home(.:format)           admin/homes#create
#  new_admin_blog GET    /admin/blog/new(.:format)       admin/blogs#new
# edit_admin_blog GET    /admin/blog/edit(.:format)      admin/blogs#edit
#      admin_blog GET    /admin/blog(.:format)           admin/blogs#show
#                 PATCH  /admin/blog(.:format)           admin/blogs#update
#                 PUT    /admin/blog(.:format)           admin/blogs#update
#                 DELETE /admin/blog(.:format)           admin/blogs#destroy
#                 POST   /admin/blog(.:format)           admin/blogs#create
#     admin_posts GET    /admin/posts(.:format)          admin/posts#index
#                 POST   /admin/posts(.:format)          admin/posts#create
#  new_admin_post GET    /admin/posts/new(.:format)      admin/posts#new
# edit_admin_post GET    /admin/posts/:id/edit(.:format) admin/posts#edit
#      admin_post GET    /admin/posts/:id(.:format)      admin/posts#show
#                 PATCH  /admin/posts/:id(.:format)      admin/posts#update
#                 PUT    /admin/posts/:id(.:format)      admin/posts#update
#                 DELETE /admin/posts/:id(.:format)      admin/posts#destroy
#      admin_root GET    /admin(.:format)                admin/home#index
#

Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, param: 'url_path'

  namespace :admin do
    resource :blog
    resources :posts
    root to: 'posts#index'
  end
end
