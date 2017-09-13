require 'test_helper'

class CurdsControllerTest < ActionDispatch::IntegrationTest
  test "should get new_entry" do
    get curds_new_entry_url
    assert_response :success
  end

  test "should get edit_entry" do
    get curds_edit_entry_url
    assert_response :success
  end

  test "should get delete_entry" do
    get curds_delete_entry_url
    assert_response :success
  end

  test "should get view_entry" do
    get curds_view_entry_url
    assert_response :success
  end

end
