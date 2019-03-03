require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_in" do
    get user_sign_in_url
    assert_response :success
  end

  test "should get new" do
    get user_new_url
    assert_response :success
  end

end
