# == Schema Information
#
# Table name: images
#
#  id           :integer          not null, primary key
#  filename     :string
#  file         :string
#  content_type :string
#  blog_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_images_on_blog_id  (blog_id)
#
# Foreign Keys
#
#  fk_rails_...  (blog_id => blogs.id)
#

class Image < ApplicationRecord
  mount_uploader :file, ImageUploader

  belongs_to :blog

  delegate :url, to: :file
  delegate :thumb, to: :file
end
