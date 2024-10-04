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
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
owner1 = Owner.create!(nickname: "Julia555")
owner2 = Owner.create!(nickname: "Tee123")
owner3 = Owner.create!(nickname: "Liz414")
owner4 = Owner.create!(nickname: "Jenistar")
owner5 = Owner.create!(nickname: "B0b")
owner6 = Owner.create!(nickname: "Robbie12")
owner7 = Owner.create!(nickname: "MargotR")
owner8 = Owner.create!(nickname: "LewisH4m1lt0n")
owner9 = Owner.create!(nickname: "Phelpz000")
owner10 = Owner.create!(nickname: "Jay11")

puts "Creating cars..."

Car.create!(
  brand: "Audi",
  model: "RSQ8",
  fuel: "Unleaded Petrol",
  year: 2024,
  owner: owner1,
  image_url: "https://m.atcdn.co.uk/a/media/w800/ffb58066dcef452bb468e610e55c9ccd.jpg"
)

Car.create!(
  brand: "Lamborghini",
  model: "Urus S",
  fuel: "Unleaded Petrol",
  year: 2024,
  owner: owner2,
  image_url: "https://m.atcdn.co.uk/a/media/w800/e913c63cf43f4f72b2b6246a1710bb55.jpg"
)

Car.create!(
  brand: "Chevrolet",
  model: "Corvette Stingray",
  fuel: "Unleaded Petrol",
  year: 2021,
  owner: owner3,
  image_url: "https://m.atcdn.co.uk/a/media/w800/a6ef6b5a020c46dd831fbb1563a4b0ac.jpg"
)

Car.create!(
  brand: "Mercedes-Benz",
  model: "G Class",
  fuel: "Unleaded Petrol",
  year: 2023,
  owner: owner4,
  image_url: "https://m.atcdn.co.uk/a/media/w800/3dc6f054a4b94d7eb3c2701674200c51.jpg"
)

Car.create!(
  brand: "BMW",
  model: "1 Series",
  fuel: "Diesel",
  year: 2022,
  owner: owner5,
  image_url: "https://m.atcdn.co.uk/a/media/w800/e5b2258dde604b4bbbaabbb86648af03.jpg"
)

Car.create!(
  brand: "Mercedes-Benz",
  model: "SL",
  fuel: "Unleaded Petrol",
  year: 2023,
  owner: owner6,
  image_url: "https://m.atcdn.co.uk/a/media/w800/68498387c1194a169c060742728cfad6.jpg"
)

Car.create!(
  brand: "Bugatti",
  model: "Veyron",
  fuel: "Unleaded Petrol",
  year: 2009,
  owner: owner7,
  image_url: "https://m.atcdn.co.uk/a/media/w800/dfecec986c6d4e09801dbd6cd895fdb2.jpg"
)

Car.create!(
  brand: "McLaren",
  model: "600LT",
  fuel: "Unleaded Petrol",
  year: 2020,
  owner: owner8,
  image_url: "https://m.atcdn.co.uk/a/media/w800/cf681d5b73104bb3a5449e1971e420ce.jpg"
)

Car.create!(
  brand: "Ferrari",
  model: "California",
  fuel: "Unleaded Petrol",
  year: 2015,
  owner: owner9,
  image_url: "https://m.atcdn.co.uk/a/media/w800/97e98cca16b846e18bff3d12ed5d5450.jpg"
)

Car.create!(
  brand: "Aston Martin",
  model: "Rapide",
  fuel: "Unleaded Petrol",
  year: 2012,
  owner: owner10,
  image_url: "https://m.atcdn.co.uk/a/media/w800/1efd84167ae249eea6e1c71baa18379c.jpg"
)

puts "Done! #{Owner.count} owners and #{Car.count} cars have been created!"
