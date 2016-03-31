# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  date       :date             not null
#  start_time :datetime         not null
#  end_time   :datetime         not null
#  name       :string           not null
#  price      :integer          not null
#  comment    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  teacher_id :srting
#

require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
