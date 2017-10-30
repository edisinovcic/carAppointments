# == Schema Information
#
# Table name: appointments
#
#  appointment_id :integer          not null, primary key
#  user_id        :integer
#  car_id         :integer
#  from           :datetime
#  to             :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Appointment < ApplicationRecord
  belongs_to :users
  belongs_to :cars
end
