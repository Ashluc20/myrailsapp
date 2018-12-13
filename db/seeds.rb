# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create(name: "Product 1", description: "Description for Product 1", image_url: "Absolution-Amazon.jpg", price: 0)
Product.create(name: "Product 2", description: "Description for Product 2", image_url: "Redemption-Amazon.jpg", price: 10)
Product.create(name: "Product 3", description: "Description for Product 3", image_url: "coming.soon.jpg", price: 0)
Product.create(name: "Product 4", description: "Description for Product 4", image_url: "https://image.shutterstock.com/z/stock-vector-stay-tuned-coming-soon-text-on-geometric-polygonal-background-499604734.jpg", price: 0)
Product.create(name: "Product 5", description: "Description for Product 5", image_url: "https://farm3.staticflickr.com/2709/4396687745_6d85772f0f.jpg", price: 0)

Order.delete_all
Order.create(user_id: 1, product_id: Product.first.id, total: 100)
Order.create(user_id: 1, product_id: Product.last.id, total: 500)
