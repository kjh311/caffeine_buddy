class DrinksController < ApplicationController


  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.update_attributes(drink_params)
    redirect_to drinks_path
  end


  def  new
    @drink = Drink.new
  end

 def create
  @drink = Drink.new(drinks_params)
  if @drink.save
   redirect_to drinks_path
  else
   render 'new'
  end
 end

  def destroy
    drink = Drink.find(params[:id])
    drink.destroy
    redirect_to drinks_path
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :photo_url,)
  end
end
