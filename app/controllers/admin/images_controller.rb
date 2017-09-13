class Admin::ImagesController < Admin::BaseController
  def create
    # NOTE: @blog.images <<  を使うと identifier が無い、とエラーになるので
    @blog.images = @blog.images + [params[:image][:file]]
    if @blog.save
      render json: @blog.images.last
    else
      render json: { error: 'Something goes wrong'}
    end
  end
end
