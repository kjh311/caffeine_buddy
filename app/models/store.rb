class Store < ActiveRecord::Base
  has_many :drink_prices
  has_many :drinks, through: :drink_prices
  has_many :comments

  attr_accessible :address, :latitude, :longitude
  geocoded_by :address
end
