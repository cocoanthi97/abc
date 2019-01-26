require 'test_helper'

class UpdateProgressUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get update_progress_user_index_url
    assert_response :success
  end

  test "should get input_date" do
    get update_progress_user_input_date_url
    assert_response :success
  end

  test "should get update" do
    get update_progress_user_update_url
    assert_response :success
  end

end
