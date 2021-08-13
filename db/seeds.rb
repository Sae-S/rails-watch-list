# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Cleaning the db...'
Movie.destroy_all
List.destroy_all

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
Movie.create(title: "Ponyo", overview: "Ponyo uses her father's magic to transform herself into a young girl and quickly falls in love with Sosuke, but the use of such powerful sorcery causes a dangerous imbalance in the world.", poster_url: "https://cdn.shopify.com/s/files/1/0075/8697/1703/products/Ponyo_2700x4000_362ea0ae-b88a-4874-ab82-d815e430a4d0_1024x1024.jpg?v=1578349604", rating: 8.0)
Movie.create(title: "Black Panther", overview: "After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king.", poster_url: "https://i.pinimg.com/originals/b8/ce/c7/b8cec7d7e348590d72a70c9441fc73e5.jpg", rating: 9.0)
puts "Created #{Movie.count} movies."

List.create(name: "Action")
List.create(name: "Comedy")
List.create(name: "Romance")
List.create(name: "Fantasy")
puts "Created #{List.count} lists."

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# list = List.new(name: 'Action')
# list.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
