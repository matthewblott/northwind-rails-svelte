json.extract! order_detail, :id, :order_id, :product_id, :quantity, :unit_price, :discount, :order_detail_status, :date_allocated, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
