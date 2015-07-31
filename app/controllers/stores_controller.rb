class StoresController < ApplicationController
  before_action :authenticate

  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
    # @drink_price = DrinkPrice.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    @store.update_attributes(store_params)
    redirect_to stores_path
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

 def maps
     url = "https://maps.googleapis.com/maps/api/js?key="
     key = ENV['GOOGLE_MAPS']
     @endpoint = url + key
 end

  def destroy
    store = Store.find(params[:id])
    store.destroy
    redirect_to stores_path
  end

  private

  def store_params
    params.require(:store).permit(:name, :address, :latitude, :longitude)
  end
end
