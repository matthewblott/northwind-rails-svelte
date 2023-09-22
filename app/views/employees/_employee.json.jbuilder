json.extract! employee, :id, :first_name, :last_name, :email, :phone, :address1, :address2, :city, :state, :postal_code, :country, :avatar, :job_title, :department, :manager_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
