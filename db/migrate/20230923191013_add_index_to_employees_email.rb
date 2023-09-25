class AddIndexToEmployeesEmail < ActiveRecord::Migration[7.0]
  def change
    add_index :employees, :email, unique: true
  end
end
