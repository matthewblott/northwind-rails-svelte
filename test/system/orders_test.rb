require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  # setup do
  #   @order = orders(:one)
  # end
  #
  # test "visiting the index" do
  #   visit orders_url
  #   assert_selector "h1", text: "Orders"
  # end
  #
  # test "should create order" do
  #   visit orders_url
  #   click_on "New order"
  #
  #   fill_in "Customer", with: @order.customer_id
  #   fill_in "Employee", with: @order.employee_id
  #   fill_in "Order date", with: @order.order_date
  #   fill_in "Order status", with: @order.order_status
  #   fill_in "Paid date", with: @order.paid_date
  #   fill_in "Payment type", with: @order.payment_type
  #   fill_in "Ship address1", with: @order.ship_address1
  #   fill_in "Ship address2", with: @order.ship_address2
  #   fill_in "Ship city", with: @order.ship_city
  #   fill_in "Ship country", with: @order.ship_country
  #   fill_in "Ship name", with: @order.ship_name
  #   fill_in "Ship postal code", with: @order.ship_postal_code
  #   fill_in "Ship state", with: @order.ship_state
  #   fill_in "Shipped date", with: @order.shipped_date
  #   fill_in "Shipping fee", with: @order.shipping_fee
  #   click_on "Create Order"
  #
  #   assert_text "Order was successfully created"
  #   click_on "Back"
  # end
  #
  # test "should update Order" do
  #   visit order_url(@order)
  #   click_on "Edit this order", match: :first
  #
  #   fill_in "Customer", with: @order.customer_id
  #   fill_in "Employee", with: @order.employee_id
  #   fill_in "Order date", with: @order.order_date
  #   fill_in "Order status", with: @order.order_status
  #   fill_in "Paid date", with: @order.paid_date
  #   fill_in "Payment type", with: @order.payment_type
  #   fill_in "Ship address1", with: @order.ship_address1
  #   fill_in "Ship address2", with: @order.ship_address2
  #   fill_in "Ship city", with: @order.ship_city
  #   fill_in "Ship country", with: @order.ship_country
  #   fill_in "Ship name", with: @order.ship_name
  #   fill_in "Ship postal code", with: @order.ship_postal_code
  #   fill_in "Ship state", with: @order.ship_state
  #   fill_in "Shipped date", with: @order.shipped_date
  #   fill_in "Shipping fee", with: @order.shipping_fee
  #   click_on "Update Order"
  #
  #   assert_text "Order was successfully updated"
  #   click_on "Back"
  # end
  #
  # test "should destroy Order" do
  #   visit order_url(@order)
  #   click_on "Destroy this order", match: :first
  #
  #   assert_text "Order was successfully destroyed"
  # end
end
