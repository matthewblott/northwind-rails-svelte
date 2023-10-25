# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 20.times do
#   Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# end

Employee.create! do |employee|
  employee.id = 201
  employee.email = "matt@example.com"
  employee.password = "password"
  employee.password_confirmation = "password"
  employee.first_name = "Matt"
  employee.last_name = "Davies"
  employee.job_title = "Developer"
  employee.department = "IT"
  employee.manager_id = 202
  employee.phone = "555-555-5555"
  employee.address1 = "123 Main St"
  employee.address2 = "Suite 100"
  employee.city = "Chicago"
  employee.state = "IL"
  employee.postal_code = "60601"
  employee.country = "USA"
end
