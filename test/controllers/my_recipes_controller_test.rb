require 'test_helper'

class MyRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_recipes_index_url
    assert_response :success
  end

  test "should get new" do
    get my_recipes_new_url
    assert_response :success
  end

  test "should get show" do
    get my_recipes_show_url
    assert_response :success
  end

  test "should get edit" do
    get my_recipes_edit_url
    assert_response :success
  end

end
