require 'test_helper'

class EflashssdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eflashssd_index_url
    assert_response :success
  end

  test "should get new" do
    get eflashssd_new_url
    assert_response :success
  end

  test "should get show" do
    get eflashssd_show_url
    assert_response :success
  end

  test "should get edit" do
    get eflashssd_edit_url
    assert_response :success
  end

end
