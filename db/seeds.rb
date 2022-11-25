# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create(name: "Men's")
Category.create(name: "women's")
Product.create(name: "Nike Retro", description: "Created for the hardwood but taken to the streets, the '80s b-ball icon returns with perfectly sheened overlays and original university colors. With its classic hoops design, the Nike Dunk High Retro channels '80s vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.", price: 120.5)
SubCategory.create(category_id: 1, product_id: 1, name: "Shoes", description: "80s b-ball icon returns with perfectly")
Product.create(name: "Addidass Retro", description: "Created for the hardwood but taken to the streets," , price: 12)

