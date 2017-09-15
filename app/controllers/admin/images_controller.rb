class Admin::ImagesController < Admin::BaseController

  def index
    @images = @blog.images.order(id: :desc)
  end

  def create
    @image = @blog.images.build
    @image.file = params[:image][:file]
    @image.filename = params[:image][:file].original_filename
    @image.content_type = params[:image][:file].content_type
    if @image.save
      render json: @image.file
    else
      render json: { error: 'Something goes wrong'}
    end
  end

  def destroy
    @image = @blog.images.find(params[:id])
    @image.destroy!
    redirect_to admin_images_path, notice: 'Image is successfully deleted.'
  end
end
