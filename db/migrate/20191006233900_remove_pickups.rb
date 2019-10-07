class RemovePickups < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :pickup
    drop_table :pickups
  end
end
