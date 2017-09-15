class RemoveImagesFromBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :images
  end
end
