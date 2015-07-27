class DrinksController < ApplicationController
  # belongs_to :category

  def index
    @drinks = Drink.all
  end

  def edit

  end

  def show

  end


  def  new
    @drinks = Drink.new
  end

 def create
  @drinks = Drink.new(drinks_params)
  if @drinks.save
   redirect_to drinks_path
  else
   render 'new'
  end
 end

  def destroy

  end
end
