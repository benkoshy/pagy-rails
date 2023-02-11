require "test_helper"

class FoundationMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foundation_movies_index_url
    assert_response :success
  end
end
