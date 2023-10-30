# =============================================================================
# Employees
# =============================================================================

employee_id = 201

default_password = 'password'

employees = []

20.times do
  employees << Employee.create(
    :id => employee_id,
    :email => Faker::Internet.unique.email,
    :password => default_password,
    :password_confirmation => default_password,
    :last_name => Faker::Name.last_name,
    :first_name => Faker::Name.first_name,
    :title => Faker::Job.title,
    :title_of_courtesy => Faker::Name.prefix,
    :birth_date => Faker::Date.between(from: 65.years.ago, to: 18.years.ago),
    :hire_date => Faker::Date.between(from: 25.years.ago, to: 1.month.ago),
    :address1 => Faker::Address.street_address,
    :address2 => Faker::Address.secondary_address,
    :city => Faker::Address.city,
    :region => Faker::Address.state,
    :postal_code => Faker::Address.zip,
    :country => Faker::Address.country,
    :home_phone => Faker::PhoneNumber.phone_number,
    :extension => Faker::Number.number(digits: 3)
  )

  employee_id += 1

end

[201, 203, 204, 205, 208].each do |id|
  Employee.find(id).update_column(:reports_to, 202) 
end

[206, 209].each do |id|
  Employee.find(id).update_column(:reports_to, 205) 
end

Employee.find(201).update_column(:email, 'admin@example.com') 

# =============================================================================
# Customers
# =============================================================================

customers = []

100.times do
  customers << Customer.create(
    :id => Faker::Alphanumeric.unique.alpha(number: 5).upcase,
    :company_name => Faker::Company.name,
    :contact_name => Faker::Name.name,
    :contact_title => Faker::Job.title,
    :address => Faker::Address.street_address,
    :city => Faker::Address.city,
    :region => Faker::Address.state,
    :postal_code => Faker::Address.zip,
    :country => Faker::Address.country,
    :phone => Faker::PhoneNumber.phone_number,
    :fax => Faker::PhoneNumber.phone_number
  )
end

# ============================================================================
# Products
# =============================================================================

product_id = 1

products = []

100.times do
  products << Product.create(
    :id => product_id,
    :product_code => Faker::Alphanumeric.unique.alphanumeric(number: 12).upcase,
    :product_name => Faker::Commerce.product_name,
    :description => Faker::Lorem.sentence,
    :standard_cost => Faker::Commerce.price,
    :list_price => Faker::Commerce.price,
    :discontinued => Faker::Boolean.boolean
  )
  
  product_id += 1

end

# =============================================================================
# Orders
# =============================================================================

order_id = 4001

orders = []

10.times do

  random_employee_index = Random.rand(1..employees.count)
  random_employee = employees[random_employee_index - 1] 
  random_employee_id = random_employee.id  

  random_customer_index = Random.rand(1..customers.count)
  random_customer = customers[random_customer_index - 1] 
  random_customer_id = random_customer.id 

  orders << Order.create(
    :id => order_id,
    :employee_id => random_employee_id,
    :customer_id => random_customer_id, 
    :order_date => Faker::Date.between(from: 25.years.ago, to: 1.year.ago),
    :shipped_date => Faker::Date.between(from: 25.years.ago, to: 1.month.ago),
    :ship_name => Faker::Name.name,
    :ship_address1 => Faker::Address.street_address,
    :ship_address2 => Faker::Address.secondary_address,
    :ship_city => Faker::Address.city,
    :ship_state => Faker::Address.state,
    :ship_postal_code => Faker::Address.zip,
    :ship_country => Faker::Address.country,
    :shipping_fee => Faker::Commerce.price,
    :payment_type => Faker::Subscription.payment_method,
    :paid_date => Faker::Date.between(from: 25.years.ago, to: 1.year.ago),
    :order_status => Faker::Lorem.word
  )

  order_id += 1

end

# =============================================================================
# Order Items 
# =============================================================================

1.times do

  random_order_index = Random.rand(1..orders.count)
  random_order = orders[random_order_index - 1] 
  random_order_id = random_order.id

  random_product_index = Random.rand(1..products.count)
  random_product = products[random_product_index - 1] 
  random_product_id = random_product.id

  OrderItem.create(
    :order_id => random_order_id, 
    :product_id => random_product_id,
    :quantity => Faker::Number.number(digits: 2),
    :unit_price => Faker::Commerce.price,
    :discount => Faker::Commerce.price,
    :order_item_status => Faker::Lorem.word,
    :date_allocated => Faker::Date.between(from: 25.years.ago, to: 1.year.ago) 
  )

end

# =============================================================================
# Suppliers
# =============================================================================

supplier_id = 1

100.times do
  Supplier.create(
    :id => supplier_id,
    :company_name => Faker::Company.name,
    :contact_name => Faker::Name.name,
    :contact_title => Faker::Job.title,
    :address => Faker::Address.street_address,
    :city => Faker::Address.city,
    :region => Faker::Address.state,
    :postal_code => Faker::Address.zip,
    :country => Faker::Address.country,
    :phone => Faker::PhoneNumber.phone_number,
    :fax => Faker::PhoneNumber.phone_number,
    :homepage => Faker::Internet.url
  )
  
  supplier_id += 1

end

# =============================================================================
# Categories
# =============================================================================

category_id = 1

100.times do
  Category.create(
    :id => category_id,
    :category_name => Faker::Commerce.department,
    :description => Faker::Lorem.sentence
  )
  
  category_id += 1

end

# =============================================================================
# Product Categories
# =============================================================================

# product_id = 1
#
# 100.times do    
#
#   ProductCategory.create(
#     :product_id => product_id,
#     :category_id => category_id
#   )
#     
#   product_id += 1
# end

# =============================================================================
# Shippers
# =============================================================================

shipper_id = 1

100.times do  
  Shipper.create(
    :id => shipper_id,
    :company_name => Faker::Company.name,
    :phone => Faker::PhoneNumber.phone_number
  )
  
  shipper_id += 1
end
