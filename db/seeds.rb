# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..5).each { |x| User.create!(name: "guy #{x}",email: "foo#{x}@gmail.com",password: '123456', password_confirmation: '123456') }
(1..5).each { |x| Post.create!(title: "guy #{x}",body: "foo#{x}@gmail.com", user: User.first) }
(1..5).each { |x| Comment.create!(body: "comment #{x}",post: Post.first, user: User.second) }
