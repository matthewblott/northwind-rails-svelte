class CreateEmployeeAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_addresses do |t|
      t.integer :employee_id
      t.integer :address_id

      t.timestamps
    end
  end
end
