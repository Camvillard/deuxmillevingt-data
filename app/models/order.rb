class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pickup
  has_many :order_items
end
