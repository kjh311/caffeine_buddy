class Store < ActiveRecord::Base
  has_many :drink_prices
  has_many :drinks, through: :drink_prices
  has_many :comments


  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


end
