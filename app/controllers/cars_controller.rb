class CarsController < ApplicationController
  def create
    car = Car.new
    car.car_name = params[:car_name]
    car.car_type = params[:car_type]
    car.save
  end

  def index
    cars = Car.paginate(page: params[:page], per_page: 10)
    render json: cars
  end

  def show
    car = Car.find(params[:id])
    render json: car
  end

  def new
  end

  def update
    car = Car.find(params[:id])
    car.car_name = params[:car_name]
    car.car_type = params[:car_type]
    car.save
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy

  end

end
