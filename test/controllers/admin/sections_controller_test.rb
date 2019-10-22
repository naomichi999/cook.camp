require 'test_helper'

class Admin::SectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_sections_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_sections_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_sections_edit_url
    assert_response :success
  end

  test "should get create" do
    get admin_sections_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_sections_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_sections_destroy_url
    assert_response :success
  end

end
