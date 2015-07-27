class DrinkPricesController < ApplicationController
  def index
    @drink_prices = DrinkPrice.all
  end

  def edit

  end

  def show

  end

  def  new
    @drink_price = DrinkPrice.new
  end

 def create
  @drink_price = DrinkPrice.new(drink_prices_params)
  if @drink_price.save
   redirect_to drink_prices_path
  else
   render 'new'
  end
 end

  def destroy

  end
end
