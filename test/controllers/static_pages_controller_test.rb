require "test_helper"

# class StaticPagesControllerTest < ActionDispatch::IntegrationTest
class StaticPagesControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end
  
  test 'should get home' do
    get :home
    assert_response :success
    assert_select "title", "NorthwindWithRails"
  end
  
end
