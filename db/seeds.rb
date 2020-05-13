# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "05879653229", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "05873243229", category: "italian" }
loro_di_napole = { name: "Loro di Napole", address: "Ealing Road TW8", phone_number: "05878730229", category: "italian" }
red_dragon = { name: "Red Dragon", address: "Chiswinck High Rd CW8", phone_number: "3079653229", category: "french" }
aladdin = { name: "Aladdin", address: "Hammersmith TW8", phone_number: "07399653229", category: "belgian" }
[ dishoom, pizza_east, loro_di_napole, red_dragon, aladdin ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
