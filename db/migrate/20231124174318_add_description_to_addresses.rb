class AddDescriptionToAddresses < ActiveRecord::Migration[7.1]
  def change
    add_column :addresses, :description, :string
  end
end
