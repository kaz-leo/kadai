require 'test_helper'

class PracticesControllerTest < ActionDispatch::IntegrationTest
  test "should get rrr" do
    get practices_rrr_url
    assert_response :success
  end

end
