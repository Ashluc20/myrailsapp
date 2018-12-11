# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create(name: "Product 1", description: "Description for Product 1", image_url: "https://pixabay.com/get/ea32b80c21f71c22d2524518b7444795ea76e5d004b0144591f4c971afefbc_340.jpg", price: 100)
Product.create(name: "Product 2", description: "Description for Product 2", image_url: "https://pixabay.com/get/ef36b10720e90021d85a5854ee4d459fe270e7c818b4154591f8c971a5e4_340.jpg", price: 200)
Product.create(name: "Product 3", description: "Description for Product 3", image_url: "https://pixabay.com/get/ea32b00f2cf3023ed1584d05fb1d4e97e07ee3d21cac104491f4c571afe5b7b1_340.jpg", price: 300)
Product.create(name: "Product 4", description: "Description for Product 4", image_url: "https://farm3.staticflickr.com/2690/4411460045_d7491ed4ea.jpg", price: 400)
Product.create(name: "Product 5", description: "Description for Product 5", image_url: "https://farm3.staticflickr.com/2709/4396687745_6d85772f0f.jpg", price: 500)

Order.delete_all
Order.create(user_id: 1, product_id: Product.first.id, total: 100)
Order.create(user_id: 1, product_id: Product.last.id, total: 500)
