json.extract! product, :id, :product_code, :product_name, :description, :standard_cost, :list_price, :target_level, :reorder_level, :minimum_reorder_quantity, :quantity_per_unit, :discontinued, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
