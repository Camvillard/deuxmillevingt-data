puts  "destroying old products"

Product.destroy_all
User.destroy_all
Pickup.destroy_all
Order.destroy_all
OrderItem.destroy_all

Product.create!(
  name: 'maxi calendrier',
  description: 'un très cool calendrier',
  price: 52
)

Pickup.create!(
  name: 'Canada',
  description: 'livraison au Canada',
  price: 10
)

Pickup.create!(
  name: 'Ramassage',
  description: 'ramassage chez Bouche Bée, Hochelaga',
  price: 0
)

puts  "seeds completed"
