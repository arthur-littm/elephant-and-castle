# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.all.destroy_all
Post.all.destroy_all

look_book = Category.create(name: "Fashion")
travel = Category.create(name: "Travel")
art = Category.create(name: "Art")
fun = Category.create(name: "Fun")
inspiration = Category.create(name: "Inspirational")
sports = Category.create(name: "Sports")
food = Category.create(name: "Food")
nightlife = Category.create(name: "Nightlife")

user = User.create(email: "adriana@kosowski.com", password: "adriana", admin: true, name: "Adriana")
