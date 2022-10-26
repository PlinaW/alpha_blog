require "test_helper"

class ArticlesexitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articlesexit_index_url
    assert_response :success
  end
end
