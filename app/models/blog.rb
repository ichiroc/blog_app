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

class Blog < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
end