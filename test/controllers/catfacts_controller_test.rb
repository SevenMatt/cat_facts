require "test_helper"

class CatfactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catfacts_index_url
    assert_response :success
  end
end
