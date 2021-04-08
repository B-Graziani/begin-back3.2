# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning DB"
Restautant.destroy_all
puts "creating DB"
resto1 = { name: "la tour d'argent", address: "avenue charles de gaule", stars: "5"}
resto2 = { name: "chez Wung", address: "derriere la muraille ", stars: "3"}
resto3 = { name: "Boubou sauvage", address: "1 alleee de la cité", stars: "2"}
resto4 = { name: "mcdonald", address: "avenue de clichy", stars: "0"}
resto5 = { name: "ritz", address: "avenue charles de gaule", stars: "5"}
Restaurants = []
[resto1, resto2, resto3, resto4, resto5].each_with_index do |attributes,index|
restaurant = Restautant.create!(attributes)
Restautants << restaurant
end
