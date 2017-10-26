class AppointmentController < ApplicationController

  def create
    appointment = Appointment.new
    appointment.to = params[:to]
    appointment.from = params[:from]
    appointment.save
  end

  def index
    appointments = Appointment.all.paginate(page: params[:page], per_page: 10)
    render json: appointments
  end

  def show
    appointment = User.find(params[:id])
    render json: appointment
  end

  def new

  end

  def update

  end

  def destroy

  end

end
