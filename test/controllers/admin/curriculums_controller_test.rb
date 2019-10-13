require 'test_helper'

class Admin::CurriculumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_curriculums_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_curriculums_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_curriculums_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_curriculums_edit_url
    assert_response :success
  end

end
