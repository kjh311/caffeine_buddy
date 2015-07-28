class Drink < ActiveRecord::Base
  has_many :drink_prices
  has_many :stores, through: :drink_prices
  belongs_to :category
end
