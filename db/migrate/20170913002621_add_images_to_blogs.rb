class AddImagesToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :images, :json
  end
end
