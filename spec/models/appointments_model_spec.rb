#spec/models/appointments_model_spec.rb
require 'spec_helper'

#TODO: Appointment cannot be created because user and car are not saved to test database!
RSpec.describe Appointment, :type => :model do
  before(:all) do
    @user = Users.create!(user_name: 'Karlo')
    #@user = FactoryBot.build(:users)
    @user.save!
    @car = Cars.create!(car_name: 'CarName', car_type: 'Mercedes', registration_number: 'ZG1235ZZ')
    #@car = FactoryBot.build(:cars)
    @car.save!
  end

  it 'No argument should be nil' do

    #@appointment = FactoryBot.build(:appointment)
    @appointment = Appointment.create!(user_id: @user.user_id, car_id: @car.car_id, from: '2017-10-26T09:21:27.390Z', to: '2017-10-26T09:21:27.390Z', created_at: '2017-10-26T09:21:27.390Z', updated_at: '2017-10-26T09:21:27.390Z')
    expect(@appointment.user_id).to_not be_nil
    expect(@appointment.car_id).to_not be_nil
    expect(@appointment.from).to_not be_nil
    expect(@appointment.to).to_not be_nil
  end
end

# FactoryBot
# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md
# Returns a saved User instance
# user = create(:user)
