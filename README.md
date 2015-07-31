#Caffeine Buddy

This app is designed to help users find the closest / cheapest Energy Drink / Coffee.

Trello Cards / Wireframes and ERD
https://trello.com/b/DXvwFV2Q/project-2

 ##Minimup Viable Product

[x] "Caffeine Buddy" will find Energy Drink / Coffee stores, displayed with markers on Google maps as well as a list.

[x]  As a user I want to be able to log in to verify my identity.

[x] As a user I want to be able to use a "Find Me" button that will find my location on Google Maps

[x] As a user I want to be able to update prices of drinks, as well as add new locations.  Full CRUD.


 ##Icebox Features

 [ ] As a user I want to have a drop down menu (alphabetical order) to choose my favorite brand of energy drink / coffee to perform a custom search. Perhaps each drink has a picture icon next to it.

 [x] Once I click on a Google Marker / list result, I will be shown driving directions to destination.

 [ ] Once I click on a Google Marker / list result, I will be shown the user name that created the information, as well as the other options the store has for sale.

 [ ] On the homepage will be shown the "Top Contributors" that post the most information.

 [ ] As a user I want to be able to search energy drinks individually as well as "2 For.." deals.  (2 Monsters for $2.99).

 [ ] As a user I want to be able to accumulate points when I post / update.  My points will be displayed next to my user name.


 ###Technologies Used
 This app uses Ruby on Rails with Postgres, HTML, CSS (Bootstrap), JAVASCRIPT, and JQUERY.

 ###Getting Started / Instalation

 - fork the repo, type `rake db:create`, `rake db:migrate`, `rake db:seed`, `bundle install`, then `rails s` to start the server.  Type `localhost:3000` into the browser.

 ###Bugs and TO DO LIST

 - Can't figure out how to delete drinks only at a specific store without deleting all drinks with that name.

 - Would like to display all nearby stores within a certain distance on the store index MAP.

 - Would like to make it so when you sign up it logs you in instead of making you log in again.

 - Search by zipcode doesn't work yet

 - would like to add comment section for each specific store

 - Make it so user can't click on HOME header button before login.

 - Better responsive design on cell phone.

 - Add search by Drink Type on Store index.

 - List stores by Distance / Cost
