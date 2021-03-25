class Diary < ApplicationRecord
  
  validates :image, presence: true
  validates :text, presence: true
  validates :score, numericality: { only_integer: true }, inclusion: { in: 1..100 }
  validates :category_id, numericality: { other_than: 1 } 

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end

