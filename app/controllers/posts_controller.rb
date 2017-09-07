class PostsController < ApplicationController
  def index
    @posts = @blog.posts.published.order(published_at: :desc).page params[:page]
  end

  def show
    @post = @blog.posts.find_by(url_path: params[:url_path])
  end
end
