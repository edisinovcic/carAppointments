class AppointmentsController < ApplicationController

  def create
    appointment = Appointments.new
    appointment.to = params[:to]
    appointment.from = params[:from]
    appointment.save
  end

  def index
    appointments = Appointments.all.paginate(page: params[:page], per_page: 10)
    render json: appointments
  end

  def show
    appointment = Appointments.find(params[:id])
    render json: appointment
  end

  def new
    #there is no form so this method is not used
  end

  def update
    appointment = Appointments.find(params[:id])
    appointment.to = params[:to]
    appointment.from = params[:from]
    #TODO: is there a need for change of foreign keys?
    appointment.save     #TODO: is this needed?

  end

  def destroy
    appointment = Appointments.find(params[:id])
    appointment.destroy
  end

end
