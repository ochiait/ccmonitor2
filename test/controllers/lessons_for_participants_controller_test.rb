require 'test_helper'

class LessonsForParticipantsControllerTest < ActionController::TestCase
  test "should index " do
    get :index
    assert_response :success
  end

end
