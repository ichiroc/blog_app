class Admin::PostsController < Admin::BaseController
  before_action :set_post, only: %i(show edit update destroy)

  def index
    @posts = @blog.posts.order(updated_at: :desc).page params[:page]
  end

  def new
    @post = @blog.posts.build
  end

  def create
    @post = @blog.posts.new(post_params)
    if @post.save
      redirect_to admin_posts_path, notice: '作成しました'
    else
      render :new, alert: '入力内容を確認して下さい'
    end
  end

  def edit; end

  def update
    if @post.update_attributes(post_params)
      redirect_to admin_posts_path, notice: '更新しました'
    else
      render :edit, notice: '入力内容を確認して下さい'
    end
  end

  def destroy
    @post.destroy!
    redirect_to :index, notice: '削除しました'
  end

  private

  def set_post
    @post = @blog.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :url_path, :tag_list, :published)
  end
end
