require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @product = products(:one)
  # end

  # test "should get index" do
  #   get products_url
  #   assert_response :success
  # end
  #
  # test "should get new" do
  #   get new_product_url
  #   assert_response :success
  # end
  #
  # test "should create product" do
  #   assert_difference("Product.count") do
  #     post products_url, params: { product: { category: @product.category, description: @product.description, discontinued: @product.discontinued, list_price: @product.list_price, minimum_reorder_quantity: @product.minimum_reorder_quantity, product_code: @product.product_code, product_name: @product.product_name, quantity_per_unit: @product.quantity_per_unit, reorder_level: @product.reorder_level, standard_cost: @product.standard_cost, target_level: @product.target_level } }
  #   end
  #
  #   assert_redirected_to product_url(Product.last)
  # end
  #
  # test "should show product" do
  #   get product_url(@product)
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get edit_product_url(@product)
  #   assert_response :success
  # end
  #
  # test "should update product" do
  #   patch product_url(@product), params: { product: { category: @product.category, description: @product.description, discontinued: @product.discontinued, list_price: @product.list_price, minimum_reorder_quantity: @product.minimum_reorder_quantity, product_code: @product.product_code, product_name: @product.product_name, quantity_per_unit: @product.quantity_per_unit, reorder_level: @product.reorder_level, standard_cost: @product.standard_cost, target_level: @product.target_level } }
  #   assert_redirected_to product_url(@product)
  # end
  #
  # test "should destroy product" do
  #   assert_difference("Product.count", -1) do
  #     delete product_url(@product)
  #   end
  #
  #   assert_redirected_to products_url
  # end
end
