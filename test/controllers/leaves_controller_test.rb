require 'test_helper'

class LeavesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get leaves_show_url
    assert_response :success
  end

end
