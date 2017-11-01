require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get accelerate" do
    get cars_accelerate_url
    assert_response :success
  end

end
