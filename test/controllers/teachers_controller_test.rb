# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  email      :string           not null
#  password   :string           not null
#  tel        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
