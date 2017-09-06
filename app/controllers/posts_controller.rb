class PostsController < ApplicationController
  def index
    @posts = @blog.posts.order(created_at: :desc)
  end
end
