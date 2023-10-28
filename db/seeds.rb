# =============================================================================
# Employees
# =============================================================================

employee_id = 201

default_password = 'password'

20.times do
  Employee.create(
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

100.times do
  Customer.create(
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

100.times do
  Product.create(
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

