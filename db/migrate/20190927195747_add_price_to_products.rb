class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_monetize :products, :price, currency: { present: false }
    add_monetize :pickups, :price, currency: { present: false }
  end
end