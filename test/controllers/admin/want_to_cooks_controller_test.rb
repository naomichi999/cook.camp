require 'test_helper'

class Admin::WantToCooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_want_to_cooks_index_url
    assert_response :success
  end

end
