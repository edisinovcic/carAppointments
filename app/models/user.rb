# == Schema Information
#
# Table name: users
#
#  user_id    :integer          not null, primary key
#  user_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :appointments
  has_many :credit_cards
end
