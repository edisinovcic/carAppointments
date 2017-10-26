class UserController < ApplicationController
  def create
    user = User.new
    user.user_name = params[:user_name]
    user.save
  end

  def index
    users = User.all.paginate(page: params[:page], per_page: 10)
    render json: users

  end

  def show
    user = User.find(params[:id])
    render JSON.pretty_print(user)
  end

  def new

  end

  def update

  end

  def destroy

  end

  #
  #WillPaginate.per_page = 10

end
