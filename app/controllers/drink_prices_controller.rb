class DrinkPricesController < ApplicationController
  def index
    @drink_prices = DrinkPrice.all
  end

  def edit
    @drink_price = DrinkPrice.find(params[:id])
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
    drink_price = DrinkPrice.find(params[:id])
    drink_price.destroy
    redirect_to drink_price_path
  end
end
