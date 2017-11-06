class UsersController < ApplicationController
  def create
    user = User.new
    user.user_name = params[:user_name]
    user.save
  end

  def index
    users = User.paginate(page: params[:page], per_page: 5)
    render json: users
    #TestMailer.welcome_email.deliver_now

  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def new
  end

  def update
    user = User.find(params[:id])
    user.user_name = params[:user_name]
    user.save
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  #WillPaginate.per_page = 10

end
