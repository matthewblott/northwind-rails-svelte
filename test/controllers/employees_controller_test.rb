require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url, as: :json
    assert_response :success
  end

  test "should create employee" do
    assert_difference("Employee.count") do
      post employees_url, params: { employee: { address1: @employee.address1, address2: @employee.address2, avatar: @employee.avatar, city: @employee.city, country: @employee.country, department: @employee.department, email: @employee.email, first_name: @employee.first_name, job_title: @employee.job_title, last_name: @employee.last_name, manager_id: @employee.manager_id, phone: @employee.phone, postal_code: @employee.postal_code, state: @employee.state } }, as: :json
    end

    assert_response :created
  end

  test "should show employee" do
    get employee_url(@employee), as: :json
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { address1: @employee.address1, address2: @employee.address2, avatar: @employee.avatar, city: @employee.city, country: @employee.country, department: @employee.department, email: @employee.email, first_name: @employee.first_name, job_title: @employee.job_title, last_name: @employee.last_name, manager_id: @employee.manager_id, phone: @employee.phone, postal_code: @employee.postal_code, state: @employee.state } }, as: :json
    assert_response :success
  end

  test "should destroy employee" do
    assert_difference("Employee.count", -1) do
      delete employee_url(@employee), as: :json
    end

    assert_response :no_content
  end
end
