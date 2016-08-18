class SubscriptionController < ApplicationController

  def new
  end

  def create
  	p"--------#{params_find.inspect}-----------"
  	redirect_to root_path
  end

  def show
  end
  private 

  def params_find

  	params.require(:user).permit(:name, :email, subscriptions:[:name, :card_number,:card_cvv])
  end
end
