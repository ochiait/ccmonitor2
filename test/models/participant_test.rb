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
#

require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end