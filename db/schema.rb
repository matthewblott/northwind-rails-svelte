# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_04_111640) do
  create_table "customers", force: :cascade do |t|
    t.string "last_name", limit: 50
    t.string "first_name", limit: 50
    t.string "email", limit: 50
    t.string "company", limit: 50
    t.string "phone", limit: 25
    t.string "address1", limit: 150
    t.string "address2", limit: 150
    t.string "city", limit: 50
    t.string "state", limit: 50
    t.string "postal_code", limit: 15
    t.string "country", limit: 50
  end

  create_table "database_structures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "last_name", limit: 50
    t.string "first_name", limit: 50
    t.string "email", limit: 50
    t.string "avatar", limit: 250
    t.string "job_title", limit: 50
    t.string "department", limit: 50
    t.integer "manager_id"
    t.string "phone", limit: 25
    t.string "address1", limit: 150
    t.string "address2", limit: 150
    t.string "city", limit: 50
    t.string "state", limit: 50
    t.string "postal_code", limit: 15
    t.string "country", limit: 50
  end

  create_table "order_details", primary_key: ["order_id", "product_id"], force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id"
    t.decimal "quantity", precision: 18, scale: 4, default: "0.0", null: false
    t.decimal "unit_price", precision: 19, scale: 4, default: "0.0"
    t.float "discount", default: 0.0, null: false
    t.string "order_detail_status", limit: 25
    t.datetime "date_allocated", precision: nil
  end

  create_table "orders", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "customer_id"
    t.datetime "order_date", precision: nil
    t.datetime "shipped_date", precision: nil
    t.string "ship_name", limit: 50
    t.string "ship_address1", limit: 150
    t.string "ship_address2", limit: 150
    t.string "ship_city", limit: 50
    t.string "ship_state", limit: 50
    t.string "ship_postal_code", limit: 50
    t.string "ship_country", limit: 50
    t.decimal "shipping_fee", precision: 19, scale: 4, default: "0.0"
    t.string "payment_type", limit: 50
    t.datetime "paid_date", precision: nil
    t.string "order_status", limit: 25
  end

  create_table "products", force: :cascade do |t|
    t.string "product_code", limit: 25
    t.string "product_name", limit: 50
    t.string "description", limit: 250
    t.decimal "standard_cost", precision: 19, scale: 4, default: "0.0"
    t.decimal "list_price", precision: 19, scale: 4, default: "0.0", null: false
    t.integer "target_level"
    t.integer "reorder_level"
    t.integer "minimum_reorder_quantity"
    t.string "quantity_per_unit", limit: 50
    t.integer "discontinued", default: 0, null: false
    t.string "category", limit: 50
  end

  add_foreign_key "order_details", "orders"
  add_foreign_key "order_details", "products"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
end
