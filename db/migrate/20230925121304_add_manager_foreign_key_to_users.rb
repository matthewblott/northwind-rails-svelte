class AddManagerForeignKeyToUsers < ActiveRecord::Migration[7.0]
  def change
    # add_reference :uploads, :employee, index: true
    # add_foreign_key :uploads, :users
    # add_reference :users, :manager, index: {algorithm: :concurrently}
    add_reference :users, :manager  
  end
end
