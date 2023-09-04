require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url, as: :json
    assert_response :success
  end

  test "should create customer" do
    assert_difference("Customer.count") do
      post customers_url, params: { customer: { address1: @customer.address1, address2: @customer.address2, city: @customer.city, company: @customer.company, country: @customer.country, email: @customer.email, first_name: @customer.first_name, last_name: @customer.last_name, phone: @customer.phone, postal_code: @customer.postal_code, state: @customer.state } }, as: :json
    end

    assert_response :created
  end

  test "should show customer" do
    get customer_url(@customer), as: :json
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address1: @customer.address1, address2: @customer.address2, city: @customer.city, company: @customer.company, country: @customer.country, email: @customer.email, first_name: @customer.first_name, last_name: @customer.last_name, phone: @customer.phone, postal_code: @customer.postal_code, state: @customer.state } }, as: :json
    assert_response :success
  end

  test "should destroy customer" do
    assert_difference("Customer.count", -1) do
      delete customer_url(@customer), as: :json
    end

    assert_response :no_content
  end
end
