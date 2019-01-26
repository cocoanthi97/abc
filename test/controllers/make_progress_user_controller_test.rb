require 'test_helper'

class MakeProgressUserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get make_progress_user_show_url
    assert_response :success
  end

  test "should get cretate" do
    get make_progress_user_cretate_url
    assert_response :success
  end

end
