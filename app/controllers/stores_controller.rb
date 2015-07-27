class StoresController < ApplicationController
  # has_many :reviews

  def index
    @stores = Store.all
  end

  def show

  end

  def edit

  end

  def  new
    @store = Store.new
  end

 def create
  @store = Store.new(store_params)
  if @store.save
   redirect_to stores_path
  else
   render 'new'
  end
 end

  def destroy

  end
end
