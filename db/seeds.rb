# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.all.destroy_all
Post.all.destroy_all
Video.all.destroy_all
Portrait.all.destroy_all

people = Category.create(name: "People Are Awesome", image_link: "https://static.pexels.com/photos/28017/pexels-photo-28017.jpg")
travel = Category.create(name: "Travelling", image_link: "https://static.pexels.com/photos/7045/pexels-photo.jpeg")
lifestyle = Category.create(name: "Fashion & Lifestyle", image_link: "https://static.pexels.com/photos/26549/pexels-photo-26549.jpg")
fun = Category.create(name: "Fun & Nightlife", image_link: "https://static.pexels.com/photos/195280/pexels-photo-195280.jpeg")
inspiration = Category.create(name: "Cultural & Inspirational", image_link: "https://static.pexels.com/photos/169617/pexels-photo-169617.jpeg")
