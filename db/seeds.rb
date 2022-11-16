# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
china_in_box = {name: "China in box", address: "R. Domingos Ferreira, 236", phone_number: "(21) 2521-9260", category: "chinese"}
cantina_da_praca =  {name: "Cantina da praça", address: "R. Jangadeiros, 28", phone_number: "(21) 3258-9540", category: "italian"}
temakeria =  {name: "Temakeria", address: "R. Joana Angélica, 183", phone_number: "(21) 3437-4976", category: "japanese"}
pici_trattoria =  {name: "Pici trattoria", address: "R. Barão da Torre, 348", phone_number: "(21) 99757-9160", category: "italian"}
manekineko =  {name: "Manekineko", address: "R. Barão da Torre, 472", phone_number: "(21) 3819-9515", category: "japanese"}

[china_in_box, cantina_da_praca, temakeria, pici_trattoria, manekineko].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
