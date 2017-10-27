class UsersController < ApplicationController
  def create
    user = Users.new
    user.user_name = params[:user_name]
    user.save
  end

  def index
    users = Users.paginate(page: params[:page], per_page: 5)
    render json: users

  end

  def show
    user = Users.find(params[:id])
    render json: user
  end

  def new
  end

  def update
    user = Users.find(params[:id])
    user.user_name = params[:user_name]
    user.save
  end

  def destroy
    user = Users.find(params[:id])
    user.destroy
  end

  #WillPaginate.per_page = 10

end
