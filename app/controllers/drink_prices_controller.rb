class DrinkPricesController < ApplicationController
  def index
    @drink_prices = @Drink_Prices.all
  end

  def  new
    @drink_prices = @Drink_Prices.new
  end

 def create
  @drink_prices = Drink_Prices.new(drink_prices_params)
  if @drink_prices.save
   redirect_to drink_prices_path
  else
   render 'new'
  end
 end

  def destroy

  end
end
