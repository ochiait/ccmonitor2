# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  email           :string           not null
#  password        :string           not null
#  tel             :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :srting
#

require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
