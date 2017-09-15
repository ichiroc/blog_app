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

FactoryGirl.define do
  factory :image do
    filename "MyString"
    file "MyString"
    content_type "MyString"
    blog nil
  end
end
