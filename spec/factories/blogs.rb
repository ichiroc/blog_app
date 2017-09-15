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
#

FactoryGirl.define do
  factory :blog do
    title "MyString"
    description "MyText"
  end
end
