require "test_helper"

class OrderDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_detail = order_details(:one)
  end

  test "should get index" do
    get order_details_url, as: :json
    assert_response :success
  end

  test "should create order_detail" do
    assert_difference("OrderDetail.count") do
      post order_details_url, params: { order_detail: { date_allocated: @order_detail.date_allocated, discount: @order_detail.discount, order_detail_status: @order_detail.order_detail_status, order_id: @order_detail.order_id, product_id: @order_detail.product_id, quantity: @order_detail.quantity, unit_price: @order_detail.unit_price } }, as: :json
    end

    assert_response :created
  end

  test "should show order_detail" do
    get order_detail_url(@order_detail), as: :json
    assert_response :success
  end

  test "should update order_detail" do
    patch order_detail_url(@order_detail), params: { order_detail: { date_allocated: @order_detail.date_allocated, discount: @order_detail.discount, order_detail_status: @order_detail.order_detail_status, order_id: @order_detail.order_id, product_id: @order_detail.product_id, quantity: @order_detail.quantity, unit_price: @order_detail.unit_price } }, as: :json
    assert_response :success
  end

  test "should destroy order_detail" do
    assert_difference("OrderDetail.count", -1) do
      delete order_detail_url(@order_detail), as: :json
    end

    assert_response :no_content
  end
end
