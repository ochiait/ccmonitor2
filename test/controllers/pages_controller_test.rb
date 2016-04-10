require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get tbd" do
    get :tbd
    assert_response :success
  end

end
