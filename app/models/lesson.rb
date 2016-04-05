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
#  capacity   :integer
#

class Lesson < ActiveRecord::Base
end
