# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the DB..."
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
owner1 = Owner.create!(nickname: "Julia555")
owner2 = Owner.create!(nickname: "Tee123")
owner3 = Owner.create!(nickname: "Liz414")
owner4 = Owner.create!(nickname: "Jenistar")
owner5 = Owner.create!(nickname: "B0b")
owner6 = Owner.create!(nickname: "Robbie12")

puts "Creating cars..."

Car.create!(
  brand: "Audi",
  model: "RSQ8",
  fuel: "Unleaded Petrol",
  year: 2024,
  owner: owner1
)

Car.create!(
  brand: "Lamborghini",
  model: "Urus S",
  fuel: "Unleaded Petrol",
  year: 2024,
  owner: owner2
)

Car.create!(
  brand: "Chevrolet",
  model: "Corvette Stingray",
  fuel: "Unleaded Petrol",
  year: 2021,
  owner: owner3
)

Car.create!(
  brand: "Mercedes-Benz",
  model: "G Class",
  fuel: "Unleaded Petrol",
  year: 2023,
  owner: owner4
)

Car.create!(
  brand: "BMW",
  model: "1 Series",
  fuel: "Diesel",
  year: 2022,
  owner: owner5
)


Car.create!(
  brand: "Mercedes-Benz",
  model: "SL",
  fuel: "Unleaded Petrol",
  year: 2023,
  owner: owner6
)

puts "Done! #{Owner.count} owners and #{Car.count} cars have been created!"
