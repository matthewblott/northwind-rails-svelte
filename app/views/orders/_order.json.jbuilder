json.extract! order, :id, :employee_id, :customer_id, :order_date, :shipped_date, :ship_name, :ship_address1, :ship_address2, :ship_city, :ship_state, :ship_postal_code, :ship_country, :shipping_fee, :payment_type, :paid_date, :order_status, :created_at, :updated_at
json.url order_url(order, format: :json)
