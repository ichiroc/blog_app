# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author      :string
#  images      :json
#

class Blog < ApplicationRecord
  mount_uploaders :images, ImageUploader

  has_many :posts
  has_many :tags, through: :posts
  validates :title, presence: true
  validates :author, presence: true
end
