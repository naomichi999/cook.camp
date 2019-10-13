require 'test_helper'

class Admin::EveryoneRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_everyone_recipes_index_url
    assert_response :success
  end

  test "should get genre_choice" do
    get admin_everyone_recipes_genre_choice_url
    assert_response :success
  end

end
