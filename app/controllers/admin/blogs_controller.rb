class Admin::BlogsController < ApplicationController
  def edit; end

  def update
    if @blog.update_attributes(blog_params)
      redirect_to edit_admin_blog_url, notice: '更新しました'
    else
      render :edit, notice: '確認して下さい'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end

  def set_blog
    @blog = Blog.first
  end
end
