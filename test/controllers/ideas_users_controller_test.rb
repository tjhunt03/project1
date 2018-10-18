require 'test_helper'

class IdeasUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ideas_users_create_url
    assert_response :success
  end

  test "should get destroy" do
    get ideas_users_destroy_url
    assert_response :success
  end

end
