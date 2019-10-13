require 'test_helper'

class BasicRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basic_recipes_index_url
    assert_response :success
  end

  test "should get show" do
    get basic_recipes_show_url
    assert_response :success
  end

  test "should get genre_choice" do
    get basic_recipes_genre_choice_url
    assert_response :success
  end

end
