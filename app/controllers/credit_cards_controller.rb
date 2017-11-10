class CreditCardsController < ApplicationController
  require_relative('../../app/controllers/concerns/credit_cards_concern')
  def create
    user = User.find(params[:user_id])
    credit_card = CreditCard.new
    credit_card.credit_card_number = params[:credit_card_number]
    credit_card.status = params[:status]
    credit_card.users_id = user.user_id
    credit_card.save
  end

  def index
    credit_cards = CreditCard.find(params[:user_id])
    render json: credit_cards
  end

  def show
    credit_card = CreditCard.where(:user_id => params[:user_id], :credit_card_id => params[:credit_card_id])
    render json: credit_card
  end

  def new
  end

  def update
    #user = User.find(params[:id])
    credit_card = CreditCard.find(params[:credit_card_id])
    credit_card.credit_card_number = params[:credit_card_number]
    credit_card.status = params[:credit_card_status]
    credit_card.save
  end

  def destroy
    credit_card = CreditCard.find(params[:credit_card_id])
    credit_card.destroy
  end
end


#    credit_card_status#.status.inactive?
