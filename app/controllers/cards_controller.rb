class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
  end

private

  def card_params
    params.require(:card).permit(:first_name, :last_name, :card_type, :number, :expires_on)
  end

end



