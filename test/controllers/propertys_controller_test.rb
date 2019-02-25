require 'test_helper'

class PropertysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get propertys_index_url
    assert_response :success
  end

end
