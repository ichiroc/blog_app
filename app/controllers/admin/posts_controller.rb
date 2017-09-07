class Admin::PostsController < Admin::BaseController
  before_action :set_post, only: %i(edit update destroy)

  def index
    @posts = @blog.posts.order(updated_at: :desc).page params[:page]
  end

  def new
    @post = @blog.posts.build
  end

  def create
    @post = @blog.posts.new(post_params)
    if @post.save
      redirect_to admin_posts_path, notice: 'Successfully post created.'
    else
      render :new, alert: 'See below messages.'
    end
  end

  def edit; end

  def update
    if @post.update_attributes(post_params)
      redirect_to admin_posts_path, notice: 'Successfully post updated.'
    else
      render :edit, alert: 'See below messages.'
    end
  end

  def destroy
    @post.destroy!
    redirect_to admin_posts_path, alert: 'See below messages'
  end

  private

  def set_post
    @post = @blog.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :url_path, :tag_list, :published)
  end
end
