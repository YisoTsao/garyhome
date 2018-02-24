require 'test_helper'

class EflashssdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eflashssds_index_url
    assert_response :success
  end

  test "should get new" do
    get eflashssds_new_url
    assert_response :success
  end

  test "should get show" do
    get eflashssds_show_url
    assert_response :success
  end

  test "should get edit" do
    get eflashssds_edit_url
    assert_response :success
  end

end
