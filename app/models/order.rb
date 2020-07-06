class Order < ApplicationRecord
  has_many :cart
  has_many :products, through: :cart

end
