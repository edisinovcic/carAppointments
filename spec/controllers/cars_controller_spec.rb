#spec/controllers/cars_controller_spec.rb
require 'spec_helper'
require_relative '../support/api_schema_matcher'

RSpec.describe CarsController, :type => :controller do

  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get 'index'
      expect(response).to have_http_status(200)
    end

    it 'validate JSON on #index' do
      #seed_data
      response = get 'index', :format => :json
      expect(response).to match_response_schema('car')
    end
  end


  describe 'GET #show', '#match_response_schema' do
    it 'responds successfully with an HTTP 200 status code' do
      response = get :show, params: {id: 1}
      expect(response).to have_http_status(200)
    end

    it 'validate all element to be valid JSON on #show' do
      number_of_cars = JSON.parse((get :index).body).count
      (1..number_of_cars).each do |i|
        response = get :show, params: {id: i}, format: :json
        expect(response).to match_response_schema('car')
      end
    end
  end



end