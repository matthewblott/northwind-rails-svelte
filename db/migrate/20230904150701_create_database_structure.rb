class CreateDatabaseStructure < ActiveRecord::Migration[7.0]
  def change
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

    add_foreign_key "order_details", "orders"

  end
end
