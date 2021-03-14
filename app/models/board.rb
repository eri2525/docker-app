class Board < ApplicationRecord
  has_many :comments
  has_many :board_tag_reations
  has_many :tags, through: :board_tag_relations
  
  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: {maximum: 100 }
end
# == Schema Information
#
# Table name: boards
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  title      :string(255)
#  body       :text(65535)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

