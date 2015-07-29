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
    address: '829 Solar Rd. NW Albuqeruque, NM 87107'
  }
])

monster, red_bull = Drink.create([
  {
    name: "Monster",
    photo_url: "http://tdsmotorsports.net/main/paintshop%20tools/tds%20decals/m/decals/monster%20can%20large.png"
  },
  {
    name: "Red Bull",
    photo_url: "http://www.ludumdare.com/compo/wp-content/uploads/2011/12/Energy-Drink-RedBull.png"
  }
  ])

amp, full_throttle, nos, coffee, cappuchino, espresso, iced_coffee = Drink.create([
  {
    name: "Amp",
    photo_url: "http://i55.tinypic.com/2csjapt.png"
  },
  {
    name: "Full Throttle",
    photo_url: "http://beverageuniverse.com/images/Full-Throttle-Originial.gif"
  },
  {
    name: "Nos",
    photo_url: "http://assets.coca-colacompany.com/76/92/4418dc6c44acbbb2ae54002927f2/nos-can.png"
  },
  {
    name: "Coffee",
    photo_url: "http://pngimg.com/upload/cup_PNG1966.png"
  },
  {
    name: "Cappuchino",
    photo_url: "http://www.idealweightlossect.com/wp-content/uploads/2013/03/561.png"
  },
  {
    name: "Espresso",
    photo_url: "http://www.cuculinary.com/wp-content/uploads/2014/11/espresso.png"
  },
  {
    name: "Iced Coffee",
    photo_url: "https://www.inventicoffee.com/wp-content/uploads/2013/01/Iced-Coffee-Glass300x453-300x340.png"
  }
])

cafe.drinks << monster
monster.set_price(cafe, 2.50)
cafe.drinks << amp
amp.set_price(cafe, 1.99)
cafe.drinks << full_throttle
full_throttle.set_price(cafe, 1.99)
cafe.drinks << nos
nos.set_price(cafe, 2.50)
cafe.drinks << coffee
coffee.set_price(cafe, 1.75)
cafe.drinks << cappuchino
cappuchino.set_price(cafe, 3.50)
cafe.drinks << espresso
espresso.set_price(cafe, 2.90)
cafe.drinks << iced_coffee
iced_coffee.set_price(cafe, 4.50)

test.drinks << monster
monster.set_price(test, 1.75)
test.drinks << red_bull
red_bull.set_price(test, 1.25)



