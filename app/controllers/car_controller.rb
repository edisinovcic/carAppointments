class CarController < ApplicationController
  def create
    car = Car.new
    car.car_name = params[:car_name]
    car.car_type = params[:car_type]
    car.save
  end

  def index
    cars = Car.all.paginate(page: params[:page], per_page: 10)
    render json: cars
  end

  def show
    car = Car.find(params[:id])
    render json: car
  end

  def update

  end

  def destroy

  end

end
