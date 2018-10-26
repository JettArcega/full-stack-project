require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get action" do
    get items_action_url
    assert_response :success
  end

end
