class Product < ApplicationRecord
  belongs_to  :orders
  belongs_to  :cart
  validates   :title, presence: true
  validates   :discribe, presence: true
  validates   :path_to_image, presence: true
  validates   :price, presence: true, numericality: {greater_than: 0}
end
