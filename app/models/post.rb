# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string
#  body         :text
#  published_at :date
#  url_path     :string
#  blog_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_posts_on_blog_id  (blog_id)
#

class Post < ApplicationRecord
  belongs_to :blog
  validates :title, presence: true
  validates :body, presence: true
  validates :url_path, presence: true
  acts_as_taggable
end