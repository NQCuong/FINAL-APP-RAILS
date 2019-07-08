require 'test_helper'

class NewphotoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newphoto_index_url
    assert_response :success
  end

end
