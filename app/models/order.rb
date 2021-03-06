class Order < ApplicationRecord
  belongs_to :user
  belongs_to :shipping
  has_many :order_items

  monetize :price_cents
end
