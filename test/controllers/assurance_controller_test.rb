require 'test_helper'

class AssuranceControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get assurance_create_url
    assert_response :success
  end

  test "should get new" do
    get assurance_new_url
    assert_response :success
  end

  test "should get edit" do
    get assurance_edit_url
    assert_response :success
  end

  test "should get show" do
    get assurance_show_url
    assert_response :success
  end

  test "should get destroy" do
    get assurance_destroy_url
    assert_response :success
  end

end
