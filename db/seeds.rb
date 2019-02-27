# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Book.destroy_all
Shelf.destroy_all

guyfieri = User.create(username: "guyfieriofficial", email: "guy@fieri.com", password: "hi", avatar: "google.com", bio: "king of flavortown")
eric = User.create(username: "erickimofficial", email: "eric@kim.com", password: "hi", avatar: "google.com", bio: "*rap airhorn sounds*")

harrypotter = Book.create(title: "Harry potter and the something of somethings", pageCount: 500, publishedDate: "1999-1-1")
gameofthrones = Book.create(title: "A game of thrones", pageCount: 600, publishedDate: "1990-12-12")
twilight = Book.create(title: "Twilight", pageCount: 500, publishedDate: "2005-1-1")
crucible = Book.create(title: "The crucible", pageCount: 200, publishedDate: "1800-12-12")

guyhaveread1 = Shelf.create(shelf_type: 0, user_id: 1, book: harrypotter)
guyhaveread2 = Shelf.create(shelf_type: 0, user_id: 1, book: gameofthrones)

guyreading1 = Shelf.create(shelf_type: 1, user_id: 1, book: twilight)
guyreading2 = Shelf.create(shelf_type: 1, user_id: 1, book: crucible)


p "i have been seeded"
