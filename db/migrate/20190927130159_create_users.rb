class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :country
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
