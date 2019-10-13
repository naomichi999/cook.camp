require 'test_helper'

class Admin::RepliesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_replies_new_url
    assert_response :success
  end

end
