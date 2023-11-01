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

ActiveRecord::Schema[7.1].define(version: 2023_11_01_200932) do
  create_table "categories", force: :cascade do |t|
    t.string "category_name", limit: 50
    t.string "description", limit: 250
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", id: :string, force: :cascade do |t|
    t.string "company_name", limit: 50
    t.string "contact_name", limit: 50
    t.string "contact_title", limit: 50
    t.string "address", limit: 50
    t.string "city", limit: 50
    t.string "region", limit: 50
    t.string "postal_code", limit: 50
    t.string "country", limit: 50
    t.string "phone", limit: 50
    t.string "fax", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name", limit: 50
    t.string "first_name", limit: 50
    t.string "title", limit: 50
    t.string "title_of_courtesy", limit: 50
    t.date "birth_date"
    t.date "hire_date"
    t.integer "reports_to"
    t.string "address1", limit: 150
    t.string "address2", limit: 150
    t.string "city", limit: 50
    t.string "region", limit: 50
    t.string "postal_code", limit: 15
    t.string "country", limit: 50
    t.string "home_phone", limit: 25
    t.integer "extension"
    t.string "photo", limit: 250
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", primary_key: ["order_id", "product_id"], force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id"
    t.decimal "quantity", precision: 18, scale: 4, default: "0.0", null: false
    t.decimal "unit_price", precision: 19, scale: 4, default: "0.0"
    t.float "discount", default: 0.0, null: false
    t.string "order_item_status", limit: 25
    t.datetime "date_allocated", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "employee_id"
    t.string "customer_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_code", limit: 25
    t.string "product_name", limit: 50
    t.string "description", limit: 250
    t.decimal "standard_cost"
    t.decimal "list_price"
    t.boolean "discontinued"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shippers", force: :cascade do |t|
    t.string "company_name", limit: 50
    t.string "phone", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "company_name", limit: 50
    t.string "contact_name", limit: 50
    t.string "contact_title", limit: 50
    t.string "address", limit: 50
    t.string "city", limit: 50
    t.string "region", limit: 50
    t.string "postal_code", limit: 50
    t.string "country", limit: 50
    t.string "phone", limit: 50
    t.string "fax", limit: 50
    t.string "homepage", limit: 250
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
