class CategoryController < ApplicationController
  has_many :drinks

  def index
    @categories = @Category.all
  end

  def  new
    @category = @Category.new
  end

 def create
  @category = Category.new(category_params)
  if @category.save
   redirect_to categories_path
  else
   render 'new'
  end
 end

  def destroy

  end
end
