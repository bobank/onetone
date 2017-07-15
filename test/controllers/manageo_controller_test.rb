require 'test_helper'

class ManageoControllerTest < ActionDispatch::IntegrationTest
  test "should get indx" do
    get manageo_indx_url
    assert_response :success
  end

end
