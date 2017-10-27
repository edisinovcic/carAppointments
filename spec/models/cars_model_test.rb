#spec/models/cars_model_test.rb
require './spec_helper'

RSpec.describe Cars, :type => :model do
  it 'Car name and car type and registration number should not be nil' do
    @car = Cars.create!(car_name: 'Bembura', car_type: 'BMW', registration_number: 'ZG1235ZZ')
    expect(@car.car_name).to eq('Bembura')
    expect(@car.car_type).to eq('BMW')
    expect(@car.registration_number).to eq('ZG1235ZZ')
  end
end

RSpec.describe Cars, :type => :model do
  it 'Pair car name and registration number should be unique' do
    @car = Cars.create!(car_name: 'Auto', car_type: 'BMW', registration_number: 'ZG1235ZZ')
    expect { @car = Cars.create!(car_name: 'Auto', car_type: 'Mercedes', registration_number: 'ZG1235ZZ') }.to raise_exception(ActiveRecord::RecordNotUnique)
  end
end