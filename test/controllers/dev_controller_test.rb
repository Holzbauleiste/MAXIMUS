require 'test_helper'

class DevControllerTest < ActionDispatch::IntegrationTest
  test "should get fun" do
    get dev_fun_url
    assert_response :success
  end

end
