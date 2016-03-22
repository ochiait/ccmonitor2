# == Schema Information
#
# Table name: participants
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  email      :string           not null
#  tel        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lesson_id  :integer
#

require 'test_helper'

class ParticipantsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
