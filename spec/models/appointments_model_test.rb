#spec/models/cars_model_test.rb
require './spec_helper'

RSpec.describe Appointments, :type => :model do
  it "No argument should be nil" do
    @user = Users.create!(user_name: "Edi")
    @car = Cars.create!(car_name: "Bembura", car_type: "BMW", registration_number: "ST1234ZG")
    @appointment = Appointments.create!(user_id: @user.user_id, car_id: @car.car_id, from: '2017-10-26T09:21:27.390Z', to: '2017-10-26T09:21:27.390Z')
    expect(@appointment.user_id).to eq("Bembura")
    expect(@appointment.car_id).to eq("BMW")
    expect(@appointment.from).to eq("2017-10-26T09:21:27.390Z")
    expect(@appointment.to).to eq("2017-10-26T09:21:27.390Z")
  end
end