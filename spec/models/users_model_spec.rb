#spec/models/users_model_spec.rb
require 'spec_helper'

RSpec.describe User, :type => :model do
  it 'User is valid only with name' do
    @marko = User.create!(user_name: 'Marko', created_at: '2017-10-26T09:21:27.390Z', updated_at: '2017-10-26T09:21:27.390Z')
    expect(@marko.user_name).to eq('Marko')
  end
end

RSpec.describe User, :type => :model do
  it 'User is invalid without name' do
    #https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher
    expect {User.create!}.to raise_exception(ActiveRecord::StatementInvalid)
  end
end

RSpec.describe User, :type => :model do
  it 'User name should be unique' do
    @ivan = User.create!(user_name: 'Ivan')
    expect { User.create!(user_name: 'Ivan') }.to raise_exception(ActiveRecord::RecordNotUnique)
  end
end