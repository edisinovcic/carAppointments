require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  test "check if no field is empty in all" do
    #@appoitments = Appointments.all
    #@appoitments.each do |a|
      validates :user_id, presence: true
      validates :car_id, presence: true
      validates :from, presence: true
      validates :to, presence: true
    #end

  end
end
