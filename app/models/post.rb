# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string
#  body         :text
#  published_at :datetime
#  url_path     :string
#  blog_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  published    :boolean
#
# Indexes
#
#  index_posts_on_blog_id  (blog_id)
#
# Foreign Keys
#
#  fk_rails_...  (blog_id => blogs.id)
#

class Post < ApplicationRecord
  belongs_to :blog
  validates :title, presence: true
  validates :body, presence: true
  validates :url_path, presence: true, uniqueness: { scope: :blog_id }
  acts_as_taggable

  before_validation :set_publshed_date, if: :published?

  scope :published, -> { where(published: true) }

  # NOTE: default_value_for がバージョンの関係で使えないので
  attribute :published, :boolean, default: -> { true }

  private

  def set_publshed_date
    self.published_at = Time.zone.now if published_at.blank?
  end
end
