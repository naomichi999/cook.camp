require 'test_helper'

class SkillNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skill_notes_index_url
    assert_response :success
  end

  test "should get edit" do
    get skill_notes_edit_url
    assert_response :success
  end

end
