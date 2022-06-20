class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree, dependent: :destroy
  has_one :review, dependnt: :destroy
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
