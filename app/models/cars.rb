# == Schema Information
#
# Table name: cars
#
#  car_id     :integer          not null, primary key
#  car_name   :string
#  car_type   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cars < ApplicationRecord
  has_many :appointments
end
