#spec/controllers/users_controller_test.rb
require './spec_helper'


RSpec.describe UsersController, :type => :controller do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'validate json on index' do
      get :index
      Rails.logger.debug '----------------------------------------------------------------------------------------------------------'
      Rails.logger.debug response.to_yaml
      Rails.logger.debug '----------------------------------------------------------------------------------------------------------'


      #get :index, :format => :json #if this brakes then it's not valid json
      #Rails.logger.debug response.to_yaml
      # @expected = {
      #     :user_id    => @user_id,
      #     :user_name  => @user_name,
      #     :created_at => @created_at,
      #     :updated_at => @updated_at
      # }
    end
  end
end