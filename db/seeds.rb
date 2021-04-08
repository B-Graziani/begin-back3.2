# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning DB"
Restaurant.destroy_all
puts "creating DB"
resto1 = { name: "la tour d'argent", address: "avenue charles de gaule", stars: "5", chef_name: "Jean Eude"}
resto2 = { name: "chez Wung", address: "derriere la muraille ", stars: "3", chef_name: "Mr Lee"}
resto3 = { name: "Boubou sauvage", address: "1 alleee de la cité", stars: "2", chef_name: "Boubou"}
resto4 = { name: "mcdonald", address: "avenue de clichy", stars: "0", chef_name: "Johnny"}
resto5 = { name: "ritz", address: "avenue charles de gaule", stars: "5", chef_name: "Fils de pute"}
Restaurants = []
[resto1, resto2, resto3, resto4, resto5].each_with_index do |attributes,index|
restaurant = Restaurant.create!(attributes)
Restaurants << restaurant
end
