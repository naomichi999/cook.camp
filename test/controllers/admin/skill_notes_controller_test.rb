require 'test_helper'

class Admin::SkillNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_skill_notes_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_skill_notes_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_skill_notes_edit_url
    assert_response :success
  end

end
