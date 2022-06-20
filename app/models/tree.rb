class Tree < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :fruits, presence: true, inclusion: { in: %W(Apple Apricot Cherry Chestnut Coconut#{" tree"} Fig Grapefruit Hazel Mandarin Mango Mirabellier Mulberry Olivier Orange Pear Plum) }
  validates :description, presence: true, length: { minimum: 20, maximum: 280 }
  validates :quantity_by_year, presence: true, numericality: { greater_than: 0 }
  validates :price_per_year, numericality: { greater_than: 0 }
end
