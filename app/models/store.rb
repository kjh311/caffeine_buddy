class Store < ActiveRecord::Base
  has_many :drink_prices
  has_many :drinks, through: :drink_prices
  has_many :comments
end
