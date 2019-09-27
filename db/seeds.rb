puts  "destroying old products"

Product.destroy_all
User.destroy_all
Pickup.destroy_all
Order.destroy_all
OrderItem.destroy_all

User.create!(
  email: 'ca.villard@gmail.com',
  name: 'camille',
  address: '5807 rue  St Urbain',
  zip_code: 'H2T  2X4',
  country: 'Canada',
  city: 'Montréal'
)

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
