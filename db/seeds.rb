# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
5.times do
  Flat.create!(
    name: "A nice #{["house", "dungeon", "palace", "apartment", "bedsit" ].sample} located in #{["Singapore", "Tokyo", "London", "New York", "New Orleans"].sample}.",
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph_by_chars,
    price_per_night: rand(7_000..15_000),
    number_of_guests: rand(2..8)
)
end
puts "done!"
