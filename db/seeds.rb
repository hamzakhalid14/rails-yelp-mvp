# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0601565872", category:"belgian" }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: nil, category:"french" }
Macdonald = {name: "Macdonald", address: "7 Boundary St, London E2 7JE", phone_number: "0689941515", category:"belgian" }
Baba_jones =  {name: "Baba_jones", address: "56A Shoreditch High St, London E1 6PQ", phone_number: nil, category:"french" }
helo_mac = {name: "helo_mac", address: "7 Boundary St, London E2 7JE", phone_number: "0689941515", category:"belgian" }


[dishoom, pizza_east, Macdonald, Baba_jones, helo_mac].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
