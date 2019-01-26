require 'test_helper'

class MakeSubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get make_subjects_show_url
    assert_response :success
  end

  test "should get create" do
    get make_subjects_create_url
    assert_response :success
  end

  test "should get destroy" do
    get make_subjects_destroy_url
    assert_response :success
  end

end
