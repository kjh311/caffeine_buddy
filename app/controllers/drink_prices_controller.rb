class DrinkPricesController < ApplicationController
  def index
    @drink_prices = DrinkPrice.all
  end

  def edit
    @drink_price = DrinkPrice.find(params[:id])
  end

  def update
    @drink_price = DrinkPrice.find(params[:id])
    @drink_price.update_attributes(price_params)
    redirect_to store_path(@drink_price.store)
  end

  def show
     @drink_price = Drinkprice.find(params[:id])
  end

  def  new
    @drink_price = DrinkPrice.new
  end

 def create
  @drink_price = DrinkPrice.new(price_params)
  if @drink_price.save
   redirect_to store_path(params[:drink_price][:store_id])
  else
   render 'new'
  end
 end

  def destroy
    drink_price = DrinkPrice.find(params[:id])
    drink_price.destroy
    redirect_to drink_price_path
  end

  private

  def price_params
    params.require(:drink_price).permit(:price, :store_id, :drink_id)
  end
end
