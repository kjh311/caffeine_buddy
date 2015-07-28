class Drink < ActiveRecord::Base
  has_many :prices
  has_many :stores, through: :prices

  def price(store_id)
    Price.find_by(drink: self, store_id: store_id).price
  end
end
