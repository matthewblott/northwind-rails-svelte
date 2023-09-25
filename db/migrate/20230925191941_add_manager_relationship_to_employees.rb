class AddManagerRelationshipToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key "employees", "employees", column: "manager_id", primary_key: "id"
  end
end
