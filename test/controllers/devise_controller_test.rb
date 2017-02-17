require 'test_helper'

class DeviseControllerTest < ActionDispatch::IntegrationTest
  test "should get User" do
    get devise_User_url
    assert_response :success
  end

end
