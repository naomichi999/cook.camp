require 'test_helper'

class EveryoneRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get everyone_recipes_index_url
    assert_response :success
  end

  test "should get genre_choice" do
    get everyone_recipes_genre_choice_url
    assert_response :success
  end

end
