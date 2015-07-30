class Drink < ActiveRecord::Base
  has_many :prices
  has_many :stores, through: :prices

  def price(store_id)
    drink = DrinkPrice.find_by(drink: self, store_id: store_id)
    if drink
      drink.price
    else
      nil
    end
  end

  def set_price(store_id, new_price)
    drink = DrinkPrice.find_by(drink: self, store_id: store_id)
    if drink
      drink.price = new_price
      drink.save
    end
  end

   def drink_price(store_id)
    drink_price = DrinkPrice.find_by(drink: self, store_id: store_id)
    if drink_price
      drink_price
    else
      nil
    end
  end

end
