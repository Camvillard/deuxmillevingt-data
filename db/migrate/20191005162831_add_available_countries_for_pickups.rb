class AddAvailableCountriesForPickups < ActiveRecord::Migration[5.2]
  def change
    add_column :pickups, :countries, :string, array: true, default: []
  end
end
