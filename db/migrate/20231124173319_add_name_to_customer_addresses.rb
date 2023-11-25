class AddNameToCustomerAddresses < ActiveRecord::Migration[7.1]
  def change
    add_column :customer_addresses, :name, :string
  end
end
