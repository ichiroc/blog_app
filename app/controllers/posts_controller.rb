class PostsController < ApplicationController
  def index
    @posts = @blog.posts.published.order(published_at: :desc)
  end
end
