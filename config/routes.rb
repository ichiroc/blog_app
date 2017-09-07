# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#            root GET    /                               posts#index
#           posts GET    /posts(.:format)                posts#index
#            post GET    /posts/:url_path(.:format)      posts#show
# edit_admin_blog GET    /admin/blog/edit(.:format)      admin/blogs#edit
#      admin_blog PATCH  /admin/blog(.:format)           admin/blogs#update
#                 PUT    /admin/blog(.:format)           admin/blogs#update
#     admin_posts GET    /admin/posts(.:format)          admin/posts#index
#                 POST   /admin/posts(.:format)          admin/posts#create
#  new_admin_post GET    /admin/posts/new(.:format)      admin/posts#new
# edit_admin_post GET    /admin/posts/:id/edit(.:format) admin/posts#edit
#      admin_post GET    /admin/posts/:id(.:format)      admin/posts#show
#                 PATCH  /admin/posts/:id(.:format)      admin/posts#update
#                 PUT    /admin/posts/:id(.:format)      admin/posts#update
#                 DELETE /admin/posts/:id(.:format)      admin/posts#destroy
#   admin_preview POST   /admin/preview(.:format)        admin/previews#create
#      admin_root GET    /admin(.:format)                admin/posts#index
#

Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, param: 'url_path', only: [:index, :show]

  namespace :admin do
    resource :blog, only: [:edit, :update]
    resources :posts
    resource :preview, only: [:create]
    root to: 'posts#index'
  end
end
