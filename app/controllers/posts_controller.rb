class PostsController < ApplicationController
  def index
    posts_relation = @blog.posts.published.order(published_at: :desc)
    posts_relation = posts_relation.tagged_with(params[:tag]) if(params[:tag].present?)
    @posts = posts_relation.page params[:page]
  end

  def show
    @post = @blog.posts.find_by(url_path: params[:url_path])
  end
end
