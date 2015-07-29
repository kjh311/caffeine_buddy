# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Store.destroy_all
Drink.destroy_all

cafe, test = Store.create([
  {
    name: 'Food Haus Cafe',
    address: '2106 S Olive St Los Angles, CA 90007'
  }, {
    name: 'Test',
    address: ''
  }
])

monster, red_bull = Drink.create([
  {
    name: "Monster"
  },
  {
    name: "Red Bull"
  }
])

cafe.drinks << monster
monster.set_price(cafe, 2.50)

test.drinks << monster
monster.set_price(test, 1.75)
test.drinks << red_bull
red_bull.set_price(test, 1.25)



