class AddStateToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :state, :string, null: false,  default: "pending"
  end
end
