# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.delete_all

Post.delete_all
Post.create! id: 1, title: "Banana", price: 0.49, category_id: 9, active: true
Post.create! id: 2, title: "Apple", category_id: 9, price: 0.36, active: true
Post.create! id: 3, title: "Maslenka", price: 2.99, category_id: 9, active: true