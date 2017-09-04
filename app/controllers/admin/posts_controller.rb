class Admin::PostsController < ApplicationController
  before_action :set_post, only: %i(show edit update destroy)

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = @blog.posts.new(post_params)
    if post.save
      redirect_to post, notice: '作成しました'
    else
      render :new, alert: '入力内容を確認して下さい'
    end
  end

  def show; end

  def edit; end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post, notice: '更新しました'
    else
      render :edit, alert: '入力内容を確認して下さい'
    end
  end

  def destroy
    @post.destroy!
    redirect_to :index, notice: '削除しました'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :url_path, :tag_list)
  end
end
