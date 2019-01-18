# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
	Product.create!(name: "Random Product", price: 12.99, inventory_count: 2000)
end
2.times do 
	Product.create!(name: "Random Product", price: 12.99, inventory_count: 0)
end

