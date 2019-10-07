puts  "destroying old products"

Product.destroy_all
User.destroy_all
Shipping.destroy_all
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

Shipping.create!(
  name: 'colis simple',
  price: 12,
  country: 'Canada'
)

Shipping.create!(
  name: 'colis suivi',
  price: 16,
  country: 'Canada'
)

Shipping.create!(
  name: 'Ramassage',
  price: 0,
  country: 'Canada'
)

Shipping.create!(
  name: 'colis simple',
  price: 20,
  country: 'US'
)

Shipping.create!(
  name: 'colis suivi',
  price: 28,
  country: 'US'
)

Shipping.create!(
  name: 'colis simple',
  price: 50,
  country: 'Rest of the world'
)

Shipping.create!(
  name: 'colis suivi',
  price: 68,
  country: 'Rest of the world'
)


puts  "seeds completed"
