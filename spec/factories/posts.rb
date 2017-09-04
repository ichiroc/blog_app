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

FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyText"
    published_at "2017-09-04"
    url_path "MyString"
    blog nil
  end
end
