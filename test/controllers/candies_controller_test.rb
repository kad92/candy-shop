require 'test_helper'

class CandiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get candies_new_url
    assert_response :success
  end

end
