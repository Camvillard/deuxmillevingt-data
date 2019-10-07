class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.string :name
      t.monetize :price
      t.string :country

      t.timestamps
    end
    add_reference :orders, :shipping, foreign_key: true
  end
end
