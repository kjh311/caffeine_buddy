# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Store.destroy_all
Drink.destroy_all
User.destroy_all


cafe, seven, seree, winchel, nature, kofi = Store.create([
  {
    name: 'Food Haus Cafe',
    address: '2106 S Olive St Los Angles, CA 90007'
  }, {
    name: "7-Eleven",
    address: '2512 S Figueroa St Los Angeles, CA 90007'
  }, {
    name: "Seree's Coffee Shop",
    address: '2800 S Grand Ave Los Angeles, CA 90007'
  }, {
    name: "Winchell's Donut House",
    address: "2501 S San Pedro St Los Angeles, CA 90011"
  }, {
    name: "Nature's Brew",
    address: "2316 S Union Ave Los Angeles, CA 90007"
  }, {
    name: "Kofi",
    address: "1933 S Broadway Los Angeles, CA 90007"
  }
])

monster, red_bull, frap, amer = Drink.create([
  {
    name: "Monster",
    photo_url: "http://tdsmotorsports.net/main/paintshop%20tools/tds%20decals/m/decals/monster%20can%20large.png"
  },
  {
    name: "Red Bull",
    photo_url: "http://www.ludumdare.com/compo/wp-content/uploads/2011/12/Energy-Drink-RedBull.png"
  },
  {
    name: "Americano",
    photo_url: "http://burgerking.s3-website-us-east-1.amazonaws.com/sites/default/files/1406848933_cafe.png"
  },
  {
    name: "Frappuccino",
    photo_url: "http://www.etna-ct.com/cmsbestanden/%5Cimagecache%5Ca865e286-1490-4680-b0ed-fc0caa87de95.png"
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

rev = Comment.create([
  {
    review: "Kofi is amazing!!!!"
  }
])

cafe.drinks << coffee
coffee.set_price(cafe, 1.75)
cafe.drinks << cappuchino
cappuchino.set_price(cafe, 3.50)
cafe.drinks << espresso
espresso.set_price(cafe, 2.90)
cafe.drinks << iced_coffee
iced_coffee.set_price(cafe, 4.50)

seven.drinks << monster
monster.set_price(seven, 1.75)
seven.drinks << red_bull
red_bull.set_price(seven, 1.25)
seven.drinks << amp
amp.set_price(seven, 1.99)
seven.drinks << full_throttle
full_throttle.set_price(seven, 1.99)
seven.drinks << nos
nos.set_price(seven, 2.50)

seree.drinks << coffee
coffee.set_price(seree, 3.00)

kofi.drinks << coffee
coffee.set_price(kofi, 1.99)
kofi.drinks << amer
amer.set_price(kofi, 2.99)
kofi.drinks << frap
frap.set_price(kofi, 1.99)
kofi.drinks << cappuchino
cappuchino.set_price(kofi, 3.50)
kofi.drinks << espresso
espresso.set_price(kofi, 2.90)
kofi.drinks << iced_coffee
iced_coffee.set_price(kofi, 4.50)


kofi.comments << rev




