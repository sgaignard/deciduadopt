class Review < ApplicationRecord
  belongs_to :user
  belongs_to :adoption
  validates :rating, presence: true, numericality: { in: 0..5 }
  validates :content, presence: true, length: { minimum: 3, maximum: 114 }
end
