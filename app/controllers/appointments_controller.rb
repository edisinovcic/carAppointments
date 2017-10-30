class AppointmentsController < ApplicationController

  def create
    appointment = Appointment.new
    appointment.to = params[:to]
    appointment.from = params[:from]
    appointment.user_id = params[:user_id]
    appointment.car_id = params[:car_id]
    appointment.save
  end

  def index
    appointments = Appointment.paginate(page: params[:page], per_page: 10)
    render json: appointments
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: appointment
  end

  def new
    #there is no form so this method is not used
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.to = params[:to]
    appointment.from = params[:from]
    #TODO: is there a need for change of foreign keys?
    appointment.save     #TODO: is this needed?

  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
  end

end
