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

require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
