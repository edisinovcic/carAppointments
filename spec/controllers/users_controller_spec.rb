#spec/controllers/users_controll#response = JSON.parse((get :show, params: {id: i}).body)er_spec.rb
require 'spec_helper'

RSpec.describe UsersController, :type => :controller do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get 'index'
      expect(response).to have_http_status(200)
    end

    it 'validate json on #index' do
      response = JSON.parse((get :index).body)
    end
  end
end