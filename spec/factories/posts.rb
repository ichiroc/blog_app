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

FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyText"
    published_at "2017-09-04"
    url_path "MyString"
    blog nil
  end
end
