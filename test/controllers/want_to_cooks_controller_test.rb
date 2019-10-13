require 'test_helper'

class WantToCooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get want_to_cooks_index_url
    assert_response :success
  end

end
