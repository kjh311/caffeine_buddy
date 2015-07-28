class CategoryController < ApplicationController



  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(drink_params)
    redirect_to drinks_path
  end


  def  new
    @category = Category.new
  end

 def create
  @category = Category.new(category_params)
  if @category.save
   redirect_to drinks_path
  else
   render 'new'
  end
 end

  def destroy
    drink = Category.find(params[:id])
    drink.destroy
    redirect_to drinks_path
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :photo_url,)
  end
end

