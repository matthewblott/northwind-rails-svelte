json.extract! customer, :id, :first_name, :last_name, :email, :phone, :address1, :address2, :city, :state, :postal_code, :country, :created_at, :updated_at
json.url customer_url(customer, format: :json)
