class DrinkPricesController < ApplicationController
  def index
    @drinkprices = DrinkPrice.all
  end

  def edit
    @drinkprice = Drink.find(params[:id])
  end

  def show
     @drink_price = Drinkprice.find(params[:id])
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
