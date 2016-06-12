require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get fb-login" do
    get user_fb-login_url
    assert_response :success
  end

  test "should get register" do
    get user_register_url
    assert_response :success
  end

end
