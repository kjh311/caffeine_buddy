class DrinksController < ApplicationController
  def index
    @drinks = @Drinks.all
  end

  def  new
    @drinks = @Drinks.new
  end

 def create
  @drinks = Drinks.new(drinks_params)
  if @drinks.save
   redirect_to drinks_path
  else
   render 'new'
  end
 end

  def destroy

  end
end
