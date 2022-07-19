# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Chirp.destroy_all
# Users
mike = User.create!(username: 'michailsoft', email: 'pizzaman@msn.ca', favorite_coin: 'etheruem', age:99)
garret = User.create!(username: 'BigG', email: 'gg@gmail.com', favorite_coin: 'Bitcoin', age: 29)
elon = User.create!(username: 'TheMusk', email: 'Musk@gmail.com', favorite_coin: 'babyElon', age: 60)




# Chirps
chirp1 = Chirp.create!(author_id: mike.id, body: "test body")
chirp2 = Chirp.create!(author_id: garret.id, body: "woof woof")
chirp3 = Chirp.create!(author_id: elon.id, body: "The Musketeer")



#Likes

