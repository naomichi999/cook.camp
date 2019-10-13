require 'test_helper'

class Admin::BasicRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_basic_recipes_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_basic_recipes_show_url
    assert_response :success
  end

  test "should get genre_choice" do
    get admin_basic_recipes_genre_choice_url
    assert_response :success
  end

end
